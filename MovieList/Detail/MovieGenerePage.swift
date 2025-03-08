//
//  MovieGenerePage.swift
//  MovieList
//
//  Created by Jaya Sabeen on 08/03/25.
//

import SwiftUI

struct MovieGenerePage: View {
    
    let genreNames: [String]
    
    var body: some View {
        HStack {
            ForEach(genreNames, id: \.self) { genre in
                Text(genre)
                    .padding(5)
                    .background(Color.leadingRed.opacity(0.3))
                    .cornerRadius(7)
                    .foregroundColor(.whiteClear)
            }
        }
    }
}

#Preview {
    MovieGenerePage(genreNames: ["Hai", "hello"])
}
