//
//  ListView.swift
//  The Movie App
//
//  Created by Mert Şafaktepe on 26.06.2022.
//
import UIKit
import SnapKit

class ListVC: UIViewController {
    
    var movies: [Movie] = []
    
    //MARK: - Views
    private lazy var moviesTableView: UITableView  = {
        let tableView = UITableView()
        tableView.backgroundColor = .green
        tableView.register(MoviesCell.self, forCellReuseIdentifier: MoviesCell.identifier)
        return tableView
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        movies = fetchDummyData()
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
        return movies.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MoviesCell.identifier) as! MoviesCell
        let movie = movies[indexPath.row]
        cell.setCell(movie: movie)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

extension ListVC {
    func fetchDummyData() -> [Movie] {
      /*  let movie1 = Movie(image: UIImage(named: "image")!, title: "Bu birinci")
        let movie2 = Movie(image: UIImage(named: "image2")!, title: "Bu ikinci")
        let movie3 = Movie(image: UIImage(named: "image3")!, title: "Bu üçüncü")
        let movie4 = Movie(image: UIImage(named: "image4")!, title: "Bu dördüncü")
        return [movie1, movie2, movie3, movie4] */
        let movie111 = Movie(overview: "hmm", title: "aa")
        return [movie111]
    }
}
