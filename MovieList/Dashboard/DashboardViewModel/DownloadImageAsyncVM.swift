//
//  DownloadImageAsyncVM.swift
//  MovieList
//
//  Created by Jaya Sabeen on 07/03/25.
//

import Foundation
import UIKit

class DownloadImageAsyncVM: ObservableObject {
    @Published var image: UIImage? = nil
    let data: Result
    init(image: UIImage? = nil, data: Result) {
        self.image = image
        self.data = data
    }
    
    private func composeBackDropPath(path: String) -> URL {
        return URL(string: "https://image.tmdb.org/t/p/original\(path)")!
    }
    
    func getImageConcurrency() async {
        let loader = DownloadImageAsyncLoader(url: composeBackDropPath(path: data.backdropPath))
        let image = try? await loader.downloadWithAsync()
        await MainActor.run {
            self.image = image
        }
    }
}
