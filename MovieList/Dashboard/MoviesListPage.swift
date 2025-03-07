//
//  MoviesListPage.swift
//  MovieList
//
//  Created by Jaya Sabeen on 05/03/25.
//

import SwiftUI

struct MoviesListPage: View {
    
    @StateObject private var viewModel = MovielistViewModel()
    @State var searchText: String
    
    var body: some View {
        ZStack {
            DefaultBG()
            VStack {
                HStack {
                    if viewModel.isSearch {
                        SearchBarView(searchText: $searchText, isClosedSearch: $viewModel.isSearch)
                    } else {
                        HeadingStyle(Title: "Movies", iConName: "movieclapper", isSearch: $viewModel.isSearch)
                    }
                }
                List {
                    ForEach(viewModel.moviesList, id: \.id) { movie in
                        MovieListCell(viewModel: DownloadImageAsyncVM(image: nil, data: movie))
                            .onAppear {
                                if movie.id == viewModel.moviesList.last?.id {
                                    viewModel.loadAllMovie(searchQurey: nil)
                                }
                            }
                            .listRowBackground(Color.clear)
                            .listRowSeparator(.hidden)
                            .listRowInsets(EdgeInsets(top: 5, leading: 5, bottom: 0, trailing: 5))
                    }
                }
                .listStyle(PlainListStyle())
                .scrollContentBackground(.hidden)
                .background(.clear)
                .listRowSeparator(.hidden)
            }
        }
        .onAppear {
            viewModel.loadAllMovie(searchQurey: nil)
        }
        .onChange(of: viewModel.isSearch) { _, _ in
            viewModel.pageNumber = 0
            viewModel.moviesList.removeAll()
            if !searchText.isEmpty {
                viewModel.loadAllMovie(searchQurey: searchText)
            } else {
                viewModel.loadAllMovie(searchQurey: nil)
            }
        }
    }
}

#Preview {
    MoviesListPage(searchText: "")
}
