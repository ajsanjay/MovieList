//
//  DefaultBG.swift
//  MovieList
//
//  Created by Jaya Sabeen on 06/03/25.
//

import SwiftUI

struct DefaultBG: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color("LeadingRed"), Color("TrailingBlack")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    DefaultBG()
}
