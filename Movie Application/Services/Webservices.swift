//
//  Webservices.swift
//  The Movie App
//
//  Created by Mert Şafaktepe on 29.06.2022.
//

import Foundation

class Webservices {
    func getMovies(url: URL, completion: @escaping ([Movie]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                let movieList = try? JSONDecoder().decode(MovieList.self, from: data)
                if let movieList = movieList {
                    completion(movieList.results)
                }
            }
        }.resume()
    }
}
