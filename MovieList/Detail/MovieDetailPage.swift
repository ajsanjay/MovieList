//
//  MovieDetailPage.swift
//  MovieList
//
//  Created by Jaya Sabeen on 07/03/25.
//

import SwiftUI

struct MovieDetailPage: View {
    
    @Binding var back: Bool
    @StateObject private var vm = MovieDetailVM()
    let selectedMovie: Result
    
    var body: some View {
        ZStack {
            DefaultBG()
            VStack {
                NavHeadingStyle(Title: selectedMovie.originalTitle, isAdult: selectedMovie.adult, back: $back)
                ScrollView {
                    MovieListCell(viewModel: DownloadImageAsyncVM(image: nil, data: selectedMovie, isDetail: true), isDetail: true)
                    MovieGenerePage(genreNames: vm.getGenreNames(from: selectedMovie.genreIDS))
                    Text(selectedMovie.overview)
                        .padding()
                        .foregroundColor(.whiteClear)
                        .font(.subheadline)
                        .fontWeight(.medium)
                }
            }
        }
    }
}

#Preview {
    MovieDetailPage(back: .constant(false), selectedMovie: movieList)
}
