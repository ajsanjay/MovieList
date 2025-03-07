//
//  HeadingStyle.swift
//  MovieList
//
//  Created by Jaya Sabeen on 06/03/25.
//

import SwiftUI

struct HeadingStyle: View {
    
    let Title: String
    let iConName: String
    
    var body: some View {
        HStack {
            Image(systemName: iConName)
                .padding(.leading)
                .foregroundColor(.whiteClear)
                .fontWeight(.bold)
            Text(Title)
                .foregroundColor(.whiteClear)
                .font(.title)
                .fontWeight(.bold)
            Spacer()
        }
    }
}

#Preview {
    HeadingStyle(Title: "Hello", iConName: "movieclapper")
}
