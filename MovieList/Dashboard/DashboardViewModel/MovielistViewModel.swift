//
//  MovielistViewModel.swift
//  MovieList
//
//  Created by Jaya Sabeen on 06/03/25.
//

import Foundation
import Alamofire

class MovielistViewModel: ObservableObject {
    
    @Published var moviesList: [Result] = []
    let apiClient = MoviesAPIClient()
    var pageNumber = 1
    var totalPages = 1
    
    func loadAllMovie(searchQurey: String?) {
        AsyncTask {
            if let newMovies = await getMovieList(searchQurey: searchQurey) {
                DispatchQueue.main.async {
                    self.moviesList.append(contentsOf: newMovies)
                }
            }
        }
    }
    
    private func createParams(searchQurey: String?) -> Parameters {
        var params: Parameters = [
            "api_key": "aafa86502a60244c7844fcc84ca5ecce"
            ]
        if let searchQurey {
            params["qurey"] = searchQurey
        }
        if pageNumber < totalPages {
            pageNumber += 1
            params["page"] = pageNumber
        }
        return params
    }
    
    private func decodeData(_ data: Data) -> Welcome? {
        do {
            let body = try JSONDecoder().decode(Welcome.self, from: data)
            return body
        } catch {
            print("Unable to parse response: \(error.localizedDescription)")
            return nil
        }
    }
    
    private func getMovieList(searchQurey: String?) async -> [Result]? {
        let param = createParams(searchQurey: searchQurey)
        let path = searchQurey == nil ? "discover" : "querey"
        let (data, _, _) = await apiClient.fetch(endPoint: "\(path)/movie", param: param)
        if let aData = data {
            guard let response = decodeData(aData) else { return nil }
            totalPages = response.totalPages
            return response.results
        } else {
            return nil
        }
    }
    
}
