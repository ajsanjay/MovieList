//
//  MovieCertificate.swift
//  MovieList
//
//  Created by Jaya Sabeen on 08/03/25.
//

import SwiftUI

struct MovieCertificate: View {
    
    let adult: Bool
    
    var body: some View {
        Text(adult ? "A" : "U")
            .font(.title)
            .fontWeight(.bold)
            .padding(5)
            .background(Color.ratingYellow.opacity(0.3))
            .cornerRadius(7)
            .foregroundColor(.whiteClear)
    }
}

#Preview {
    MovieCertificate(adult: true)
}
