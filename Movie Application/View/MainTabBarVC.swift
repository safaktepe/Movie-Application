//
//  MainTabBarView.swift
//  The Movie App
//
//  Created by Mert Şafaktepe on 26.06.2022.
//
import UIKit

class MainTabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        setupView()
        
    }
    
    //MARK: - SetupView
    
    func setupView() {
        let listVC = ListVC()
        listVC.navigationItem.title = "Movies"
        let listNavVC = UINavigationController(rootViewController: listVC)
        listNavVC.tabBarItem.title = "First"
        listNavVC.navigationBar.prefersLargeTitles = true
        
        let favoritesVC = FavMoviesVC()
        favoritesVC.navigationItem.title = "Favorites"
        let favroitesNavVC = UINavigationController(rootViewController: favoritesVC)
        favroitesNavVC.tabBarItem.title = "Second"
        favroitesNavVC.navigationBar.prefersLargeTitles = true
        
        let appearance = UITabBarItem.appearance()
        let attributes = [NSAttributedString.Key.font:UIFont(name: "AppleSDGothicNeo-Bold", size: 16)]
        appearance.setTitleTextAttributes(attributes as [NSAttributedString.Key : Any], for: .normal)
        viewControllers = [
        listNavVC,
        favroitesNavVC
        ]
        self.setViewControllers(viewControllers, animated: false)
    }
}
