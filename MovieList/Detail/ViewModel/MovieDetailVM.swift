//
//  MovieDetailVM.swift
//  MovieList
//
//  Created by Jaya Sabeen on 08/03/25.
//

import Foundation

class MovieDetailVM: ObservableObject {
    
    func getGenreNames(from genreIds: [Int]) -> [String] {
        return movieGenres.filter { genreIds.contains($0.id) }.map { $0.name }
    }
    
}
