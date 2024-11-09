//
//  SearchResponse.swift
//  Spotify1
//
//  Created by Tatina Dzhakypbekova on 20/7/24.
//

import Foundation
struct SearchResponse: Decodable {
       var resultCount: Int
    var results: [Track]
}

struct Track: Decodable {
    var trackName: String
//    var collectionName: String
    var artistName: String
    var artworkUrl60: String?
}
