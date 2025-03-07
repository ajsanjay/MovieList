//
//  MovieDetailPage.swift
//  MovieList
//
//  Created by Jaya Sabeen on 07/03/25.
//

import SwiftUI

struct MovieDetailPage: View {
    
    @Binding var back: Bool
    let selectedMovie: Result
    
    var body: some View {
        ZStack {
            DefaultBG()
            VStack {
                NavHeadingStyle(Title: selectedMovie.originalTitle, back: $back)
                ScrollView {
                    MovieListCell(viewModel: DownloadImageAsyncVM(image: nil, data: selectedMovie, isDetail: true), isDetail: true)
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
