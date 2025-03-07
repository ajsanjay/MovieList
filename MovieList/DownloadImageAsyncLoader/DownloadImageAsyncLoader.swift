//
//  DownloadImageAsyncLoader.swift
//  MovieList
//
//  Created by Jaya Sabeen on 07/03/25.
//

import Foundation
import UIKit

class DownloadImageAsyncLoader {
    
    let url: URL
    
    init(url: URL) {
        self.url = url
    }
    
    func handleResponse(data: Data?, response: URLResponse?) -> UIImage? {
        guard
            let data = data,
            let image = UIImage(data: data),
            let response = response as? HTTPURLResponse,
            response.statusCode >= 200 && response.statusCode <= 300 else {
            return nil
        }
        return image
    }
    
    func downloadWithAsync() async throws -> UIImage? {
        do {
            let (data, response) = try await URLSession.shared.data(from: url, delegate: nil)
            return handleResponse(data: data, response: response)
        } catch {
            throw error
        }
    }
    
}
