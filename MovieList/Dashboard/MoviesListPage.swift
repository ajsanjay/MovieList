//
//  MoviesListPage.swift
//  MovieList
//
//  Created by Jaya Sabeen on 05/03/25.
//

import SwiftUI

struct MoviesListPage: View {
    
    @StateObject private var viewModel = MovielistViewModel()
    
    var body: some View {
        ZStack {
            DefaultBG()
            VStack {
                HStack {
                    HeadingStyle(Title: "Movies", iConName: "movieclapper")
                }
                ScrollView {
                    VStack {
                        ForEach(viewModel.moviesList, id: \.id) { movie in
                            Text(movie.title)
                        }
                    }
                    Spacer()
                }
            }
        }
        .onAppear {
            viewModel.loadAllMovie(searchQurey: nil)
        }
    }
}

#Preview {
    MoviesListPage()
}
