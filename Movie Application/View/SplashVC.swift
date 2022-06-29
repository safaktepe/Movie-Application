//
//  SplashVCViewController.swift
//  The Movie App
//
//  Created by Mert Şafaktepe on 26.06.2022.
//
import UIKit
import SnapKit

class SplashVC: UIViewController {
    
    private lazy var createTaskButton: UIButton  = {
            let button = UIButton()
            button.setTitle("Create", for: .normal)
            button.backgroundColor = .red
            button.addTarget(self, action: #selector(createButtonClicked), for: .touchUpInside)
            return button
        }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
            view.backgroundColor = .white
            view.addSubview(createTaskButton)
            createTaskButton.snp.makeConstraints { make in
            make.top.equalTo(view).offset(50)
            make.left.equalTo(view).offset(50)
            make.width.height.equalTo(100)
           
        }
    }
    
    @objc func createButtonClicked() {
        let vc = MainTabBarVC()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil) 
        

    }
}
