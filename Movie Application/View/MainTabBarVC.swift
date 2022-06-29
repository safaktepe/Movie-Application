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
        tabBar.barTintColor = CustomColor.hexStringToUIColor(hex: "#2C394B")
        tabBar.isTranslucent = false
        setupView()
        
    }
    
    //MARK: - SetupView
    
    func setupView() {
        let listVC = ListVC()
        listVC.navigationItem.title = "Movies"
        let listNavVC = UINavigationController(rootViewController: listVC)
        listNavVC.tabBarItem.title = ""
        listNavVC.tabBarItem.image = UIImage(systemName: "house")
        listNavVC.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        listNavVC.navigationBar.prefersLargeTitles = true
        
        let favoritesVC = FavMoviesVC()
        favoritesVC.navigationItem.title = "Favorites"
        let favroitesNavVC = UINavigationController(rootViewController: favoritesVC)
        favroitesNavVC.tabBarItem.title = ""
        favroitesNavVC.tabBarItem.image = UIImage(systemName: "heart")
        favroitesNavVC.tabBarItem.selectedImage = UIImage(systemName: "heart.fill")
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
