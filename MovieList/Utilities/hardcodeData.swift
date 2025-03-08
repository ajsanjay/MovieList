//
//  hardcodeData.swift
//  MovieList
//
//  Created by Jaya Sabeen on 07/03/25.
//

import Foundation
import UIKit

typealias AsyncTask = _Concurrency.Task
/*Genre(
      "adult": false,
      "backdrop_path": "/9nhjGaFLKtddDPtPaX5EmKqsWdH.jpg",
      "genre_ids": [
        10749,
        878,
        53
      ],
      id:  950396,
      "original_language": "en",
      "original_title": "The Gorge",
      "overview": "Two highly trained operatives grow close from a distance after being sent to guard opposite sides of a mysterious gorge. When an evil below emerges, they must work together to survive what lies within.",
      "popularity": 2192.325,
      "poster_path": "/7iMBZzVZtG0oBug4TfqDb9ZxAOa.jpg",
      "release_date": "2025-02-13",
      "title": "The Gorge",
      "video": false,
      "vote_average": 7.77,
      "vote_count": 1649
    } */
let screenWidth = UIScreen.main.bounds.width
let screenHeight = UIScreen.main.bounds.height

let movieList = Result(adult: false, backdropPath: "/9nhjGaFLKtddDPtPaX5EmKqsWdH.jpg", genreIDS: [10749, 878, 53], id: 950396, originalLanguage: "en", originalTitle: "The Gorge", overview: "Two highly trained operatives grow close from a distance after being sent to guard opposite sides of a mysterious gorge. When an evil below emerges, they must work together to survive what lies within.", popularity: 2192.325, posterPath: "/7iMBZzVZtG0oBug4TfqDb9ZxAOa.jpg", releaseDate: "2025-02-13", title: "The Gorge", video: false, voteAverage: 7.77, voteCount: 1649)

let movieGenres = [Genre(id: 28, name: "Action"), Genre(id: 12, name: "Adventure"), Genre(id: 16,name: "Animation"), Genre(id: 35,name: "Comedy"), Genre(id: 80,name: "Crime"), Genre(id: 99,name: "Documentary"), Genre(id: 18,name: "Drama"), Genre(id: 10751,name: "Family"), Genre(id: 14,name: "Fantasy"), Genre(id: 36,name: "History"), Genre(id: 27,name: "Horror"), Genre(id: 10402,name: "Music"), Genre(id: 9648,name: "Mystery"), Genre(id: 10749,name: "Romance"), Genre(id: 878,name: "Science Fiction"), Genre(id: 10770,name: "TV Movie"), Genre(id: 53,name: "Thriller"), Genre(id: 10752,name: "War"), Genre(id: 37,name: "Western")]
