//
//  SearchBarView.swift
//  MovieList
//
//  Created by Jaya Sabeen on 07/03/25.
//

import SwiftUI

struct SearchBarView: View {
    
    @Binding var searchText: String
    @Binding var isClosedSearch: Bool
    
    var body: some View {
        HStack {
            ZStack(alignment: .trailing) {
                TextField("Search movies...", text: $searchText)
                    .autocorrectionDisabled(true)
                    .padding(10)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                
                if !searchText.isEmpty {
                    Button(action: {
                        searchText = ""
                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.gray)
                            .padding(.trailing)
                    }
                }
            }
            Button(action: {
                searchText = ""
                isClosedSearch.toggle()
            }) {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
            }
            if !searchText.isEmpty {
                Button(action: {
                    isClosedSearch.toggle()
                }) {
                    Image(systemName: "rectangle.and.text.magnifyingglass")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    SearchBarView(searchText: .constant(""), isClosedSearch: .constant(false))
}
