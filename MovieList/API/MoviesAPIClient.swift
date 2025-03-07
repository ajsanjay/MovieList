//
//  MoviesAPIClient.swift
//  MovieList
//
//  Created by Jaya Sabeen on 05/03/25.
//

import Alamofire
import Foundation

class MoviesAPIClient {
    
    let baseURL: String = "https://api.themoviedb.org/3"
    
    func fetch(endPoint: String, method: HTTPMethod = .get, param: Parameters? = nil, encoading: ParameterEncoding = URLEncoding.default) async -> (Data?, Int?, Error?) {
        let url = composeBaseUrlWithEndpoint(endpoint: endPoint)
        let headers = getDefaultHeaders()
        let asyncRequest = AF
            .request(url, method: method, parameters: param, encoding: encoading, headers: headers)
            .serializingData()
        let result = await asyncRequest.result
        let response = await asyncRequest.response
        return (try? result.get(), response.response?.statusCode, response.error)
    }
    
    private func getDefaultHeaders() -> HTTPHeaders {
        let headers: HTTPHeaders = [
            .accept("application/json"),
            .contentType("application/json")
        ]
        return headers
    }
    
    private func composeBaseUrlWithEndpoint(endpoint: String) -> String {
      return "\(baseURL)/\(endpoint)"
    }
    
}
