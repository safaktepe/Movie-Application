//
//  Movie.swift
//  The Movie App
//
//  Created by Mert Şafaktepe on 26.06.2022.
//


import Foundation
import UIKit

struct MovieList: Decodable {
    var results: [Movie]
}

struct Movie: Decodable {
    let id: Int
    var overview: String
    var title: String
    let poster_path: String
    let release_date: String
    let vote_average: Float
}
