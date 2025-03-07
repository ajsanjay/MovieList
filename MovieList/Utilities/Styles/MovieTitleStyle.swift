//
//  MovieTitleStyle.swift
//  MovieList
//
//  Created by Jaya Sabeen on 07/03/25.
//

import SwiftUI

struct MovieTitleStyle: View {
    
    let title: String
    
    var body: some View {
        Text(title)
            .font(.subheadline)
            .fontWeight(.medium)
            .foregroundColor(.whiteClear)
            .padding(.leading)
            .padding(.bottom)
    }
}

#Preview {
    MovieTitleStyle(title: "Movie Title")
}
