//
//  MovieListApp.swift
//  MovieList
//
//  Created by Jaya Sabeen on 05/03/25.
//

import SwiftUI

@main
struct MovieListApp: App {
    var body: some Scene {
        WindowGroup {
            MoviesListPage(searchText: "")
        }
    }
}
