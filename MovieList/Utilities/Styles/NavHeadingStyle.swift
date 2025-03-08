//
//  NavHeadingStyle.swift
//  MovieList
//
//  Created by Jaya Sabeen on 07/03/25.
//

import SwiftUI

struct NavHeadingStyle: View {
    
    let Title: String
    let isAdult: Bool
    @Binding var back: Bool
    
    var body: some View {
        HStack {
            Button {
                back.toggle()
            } label: {
                Image(systemName: "arrow.backward")
                    .foregroundColor(.whiteClear)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
            }
            .padding(.leading)
            Text(Title)
                .foregroundColor(.whiteClear)
                .font(.title)
                .fontWeight(.bold)
            Spacer()
            MovieCertificate(adult: isAdult)
                .padding(.trailing)
        }
    }
}

#Preview {
    NavHeadingStyle(Title: "The Lion king", isAdult: false, back: .constant(false))
}
