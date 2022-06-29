//
//  ListView.swift
//  The Movie App
//
//  Created by Mert Şafaktepe on 26.06.2022.
//
import UIKit
import SnapKit
import Kingfisher

class ListVC: UIViewController {
    
    var movies: [Movie] = []
    private var moviesListVM: MovieListViewModel!
    
    //MARK: - Views
    private lazy var moviesTableView: UITableView  = {
        let tableView = UITableView()
        tableView.backgroundColor = .white
        tableView.register(MoviesCell.self, forCellReuseIdentifier: MoviesCell.identifier)
        return tableView
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        fetchData()
        setupView()
        
        
    }
    
    //MARK: - SetupView
    func setupView(){
        view.addSubview(moviesTableView)
        moviesTableView.dataSource = self
        moviesTableView.delegate = self
        moviesTableView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(10)
            make.left.equalTo(view)
            make.right.equalTo(view)
            make.bottom.equalTo(view)
        }
        
    }

}

//MARK: - Extensions - TableView functions
extension ListVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.moviesListVM == nil ? 0 : self.moviesListVM.numbersOfRowsInSection()
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MoviesCell.identifier) as! MoviesCell
        let movieVM = self.moviesListVM.movieAtIndex(indexPath.row)
        cell.movieNameLabel.text = movieVM.title
        cell.realaseDateLabel.text = movieVM.release_date
        cell.movieImageView.kf.setImage(with: URL(string: Constants.AllUrls.getImageUrl(path: movieVM.poster_path)))
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
}

extension ListVC {
    func fetchData() {
        let url = URL(string: "https://api.themoviedb.org/3/movie/top_rated?api_key=19c933a7a432aaf4883f50a0e918fc59")!
        Webservices().getMovies(url: url) { movies in
            if let movies = movies {
                self.moviesListVM = MovieListViewModel(movies: movies)
                DispatchQueue.main.async {
                    self.moviesTableView.reloadData()
                }
            }
        }
    }
}
