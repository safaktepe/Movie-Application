//
//  FavMoviesView.swift
//  The Movie App
//
//  Created by Mert Şafaktepe on 26.06.2022.
//
import UIKit
import SnapKit

class FavMoviesVC: UIViewController {
    
    //MARK: - Views
    private lazy var favoritesTableView: UITableView  = {
        let tableView = UITableView()
        tableView.backgroundColor = CustomColor.hexStringToUIColor(hex: "#082032")
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        return tableView
        }()
    
    //MARK: - ViewDidLoad - SetupView
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = CustomColor.hexStringToUIColor(hex: "#082032")
        setupView()
    }
    
    func setupView(){
        view.addSubview(favoritesTableView)
        
        favoritesTableView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(10)
            make.left.equalTo(view)
            make.right.equalTo(view)
            make.bottom.equalTo(view)
        }
    }
    
    

}
