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
    
    func loadAllMovie(searchQurey: String?) {
        AsyncTask {
            moviesList = await getMovieList(searchQurey: searchQurey) ?? []
        }
    }
    
    private func createParams(searchQurey: String?) -> Parameters {
        var params: Parameters = [
            "api_key": "aafa86502a60244c7844fcc84ca5ecce"
            ]
        if let searchQurey {
            params["qurey"] = searchQurey
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
            return response.results
        } else {
            return nil
        }
    }
    
}
