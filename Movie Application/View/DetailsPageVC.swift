//
//  DetailsPageViewController.swift
//  The Movie App
//
//  Created by Mert Şafaktepe on 26.06.2022.
//
import UIKit
import SnapKit

class DetailsPageVC: UIViewController {
    
    //MARK: - Views
    var detailImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "image3")
        return imageView
    }()
    
    var detailNameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.text = "Abc"
        nameLabel.font = UIFont.boldSystemFont(ofSize: 40.0)
        return nameLabel
    }()
    var detailDescriptionLabel: UILabel = {
        let descriptionLabel = UILabel()
        descriptionLabel.numberOfLines = 0
        descriptionLabel.text = "Lorem ipsum Lorem ipsumLorem ipsumLorem ipsum Lorem ipsum Lorem ipsumLorem ipsumLorem ipsumLorem ipsum Lorem ipsumLorem ipsumLorem ipsumLorem ipsum Lorem ipsumLorem ipsumLorem ipsumLorem ipsum Lorem ipsumLorem ipsumLorem ipsumLorem ipsum Lorem ipsumLorem ipsumLorem ipsumLorem ipsum Lorem ipsumLorem ipsumLorem ipsumLorem ipsum Lorem ipsumLorem ipsumLorem ipsumLorem ipsum Lorem ipsumLorem ipsumLorem ipsumLorem ipsum Lorem ipsumLorem ipsumLorem ipsum"
        return descriptionLabel
    }()
    
    //MARK: - ViewdidLoad - SetupView
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        view.backgroundColor = .white
    }
    
    func setupView() {
        view.addSubview(detailImageView)
        view.addSubview(detailNameLabel)
        view.addSubview(detailDescriptionLabel)
        setConstraints()
        }
    
    //MARK: - Constraints
    func setConstraints() {
        detailImageView.snp.makeConstraints { make in
            make.top.equalTo(view)
            make.left.equalTo(view)
            make.right.equalTo(view)
            make.height.equalTo(view).multipliedBy(0.35)
          }
        detailNameLabel.snp.makeConstraints { make in
            make.top.equalTo(detailImageView.snp.bottom).offset(8)
            make.left.equalTo(view).offset(8)
            make.right.equalTo(view).offset(8)
            make.height.equalTo(32)
        }
        detailDescriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(detailNameLabel.snp.bottom).offset(14)
            make.left.equalTo(view).offset(8)
            make.right.equalTo(view).offset(-8)
            }
    }
    
}
