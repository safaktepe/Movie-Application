//
//  Constants.swift
//  Movie Application
//
//  Created by Mert Şafaktepe on 29.06.2022.
//

import Foundation

    

struct Constants {
    static let BASE_URL = "https://api.themoviedb.org"
    static let KEY = "19c933a7a432aaf4883f50a0e918fc59"
    static let IMAGE_URL = "https://image.tmdb.org"
    
    struct AllUrls {
        static func getImageUrl(path: String) -> String {
            let imageUrl = "\(Constants.IMAGE_URL)/t/p/w500\(path)"
            return imageUrl
        }
    }
}
