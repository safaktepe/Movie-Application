//
//  MovieViewModel.swift
//  Movie Application
//
//  Created by Mert Şafaktepe on 29.06.2022.
//

import Foundation

struct MovieListViewModel {
    let movies: [Movie]
}

extension MovieListViewModel {
    func numbersOfRowsInSection() -> Int {
        return self.movies.count
    }
    func movieAtIndex(_ index: Int) -> MovieViewModel {
        let movie = self.movies[index]
        return MovieViewModel(movie)
    }
}

struct MovieViewModel {
    private let movie:Movie
}

extension MovieViewModel{
    init(_ movie: Movie){
        self.movie = movie
    }
}

extension MovieViewModel{
    var title: String {
        return self.movie.title
    }
    var id: Int {
        return self.movie.id
    }
    var overview: String {
        return self.movie.overview
    }
    var poster_path: String {
        return self.movie.poster_path
    }
    var release_date: String {
        return self.movie.release_date
    }
    var vote_average: Float {
        return self.movie.vote_average
    }
}

