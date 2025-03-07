//
//  MovieListCell.swift
//  MovieList
//
//  Created by Jaya Sabeen on 07/03/25.
//

import SwiftUI

struct MovieListCell: View {
    
    @StateObject var viewModel = DownloadImageAsyncVM(image: nil, data: movieList, isDetail: false)
    let isDetail: Bool
    
    var body: some View {
        ZStack {
            if let image = viewModel.image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                VStack() {
                    Spacer()
                    if !isDetail {
                        MovieTitleStyle(title: viewModel.data.originalTitle)
                    } else {
                        HStack {
                            Spacer()
                            ZStack {
                                Rectangle()
                                    .fill(.ratingYellow)
                                Text("\(viewModel.data.voteAverage, specifier: "%.2f")")
                            }
                            .frame(width: 70, height: 40)
                            .cornerRadius(5)
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            } else {
                Color.blue
                    .frame(width: screenWidth, height: screenHeight * 0.3)
                    .edgesIgnoringSafeArea(.all)
                MovieTitleStyle(title: "Loading ...")
            }
        }
        .onAppear() {
            Task {
                await viewModel.getImageConcurrency()
            }
        }
    }
}

#Preview {
    MovieListCell(isDetail: false)
}
