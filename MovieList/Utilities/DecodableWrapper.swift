//
//  DecodableWrapper.swift
//  MovieList
//
//  Created by Jaya Sabeen on 07/03/25.
//

import Foundation

class DecodableWrapper<T: Decodable>: Decodable {
  var object: T?

  required init(from decoder: Decoder) throws {
    object = try decoder.singleValueContainer().decode(T.self)

    try decodeRest(from: decoder)
  }
  
  func decodeRest(from _: Decoder) throws {
    // No special decoding here
  }
}
