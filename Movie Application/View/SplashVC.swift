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
            button.setTitle("Devam", for: .normal)
            button.backgroundColor = .red
            button.addTarget(self, action: #selector(createButtonClicked), for: .touchUpInside)
            return button
        }()
    var geciciLabel: UILabel = {
        let label = UILabel()
        label.text = "Buraya splash ekranı gelecek"
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
            view.addSubview(geciciLabel)
            view.backgroundColor = .white
            view.addSubview(createTaskButton)
            geciciLabel.snp.makeConstraints { make in
                make.centerX.equalTo(view)
                make.centerY.equalTo(view)
            }
            createTaskButton.snp.makeConstraints { make in
            make.top.equalTo(geciciLabel.snp.bottom).offset(5)
            make.centerX.equalTo(view)
            make.width.height.equalTo(100)
           
        }
    }
    
    @objc func createButtonClicked() {
        let vc = MainTabBarVC()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil) 
        

    }
}
