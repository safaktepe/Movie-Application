//
//  DetailsPageViewController.swift
//  The Movie App
//
//  Created by Mert Şafaktepe on 26.06.2022.
//
import UIKit
import SnapKit

class DetailsPageVC: UIViewController {
    
    private var movie = Movie(id: 0, overview: "", title: "", poster_path: "", release_date: "", vote_average: 0.0)

    //MARK: - Views
    var detailImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "image3")
        return imageView
    }()
    var rateStarImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "star.fill")
        imageView.tintColor = .red
        return imageView
    }()
   var dateLabelName: UILabel = {
        let dateLabelName = UILabel()
        dateLabelName.text = "Release date: "
       dateLabelName.textColor = .white
        dateLabelName.font = UIFont.boldSystemFont(ofSize: 19.0)
        return dateLabelName
    }()
    var detailNameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.text = "Abc"
        nameLabel.textColor = .white
        nameLabel.font = UIFont.boldSystemFont(ofSize: 19.0)
        return nameLabel
    }()
    var rateLabel: UILabel = {
        let rateLabel = UILabel()
        rateLabel.text = "Abc"
        rateLabel.textColor = .white
        rateLabel.font = UIFont.boldSystemFont(ofSize: 19.0)
        return rateLabel
    }()
    var dateLabel: UILabel = {
        let dateLabel = UILabel()
        dateLabel.textColor = .lightGray
        return dateLabel
    }()
    var detailDescriptionLabel: UILabel = {
        let descriptionLabel = UILabel()
        descriptionLabel.textColor = .lightGray
        descriptionLabel.numberOfLines = 0
        descriptionLabel.text = "Lorem ipsum Lorem ipsumLorem ipsumLorem ipsum Lorem ipsum Lorem ipsumLorem ipsumLorem ipsumLorem ipsum Lorem ipsumLorem ipsumLorem ipsumLorem ipsum Lorem ipsumLorem ipsumLorem ipsumLorem ipsum Lorem ipsumLorem ipsumLorem ipsumLorem ipsum Lorem ipsumLorem ipsumLorem ipsumLorem ipsum Lorem ipsumLorem ipsumLorem ipsumLorem ipsum Lorem ipsumLorem ipsumLorem ipsumLorem ipsum Lorem ipsumLorem ipsumLorem ipsumLorem ipsum Lorem ipsumLorem ipsumLorem ipsum"
        return descriptionLabel
    }()
    
    //MARK: - ViewdidLoad - SetupView
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        view.backgroundColor = CustomColor.hexStringToUIColor(hex: "#082032")
    }

    
    func setupView() {
        view.addSubview(detailImageView)
        view.addSubview(detailNameLabel)
        view.addSubview(rateLabel)
        view.addSubview(rateStarImage)
        view.addSubview(dateLabel)
        view.addSubview(dateLabelName)
        view.addSubview(detailDescriptionLabel)
        setConstraints()
        }
    
    //MARK: - Constraints
    func setConstraints() {
        detailImageView.snp.makeConstraints { make in
            make.top.equalTo(view)
            make.left.equalTo(view)
            make.right.equalTo(view)
            make.height.equalTo(view).multipliedBy(0.45)
          }
        detailNameLabel.snp.makeConstraints { make in
            make.top.equalTo(detailImageView.snp.bottom).offset(8)
            make.left.equalTo(view).offset(8)
            make.right.equalTo(view).offset(-8)
            make.height.equalTo(32)
        }
        detailDescriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(detailNameLabel.snp.bottom).offset(14)
            make.left.equalTo(view).offset(8)
            make.right.equalTo(view).offset(-8)
            }
        rateLabel.snp.makeConstraints { make in
            make.top.equalTo(detailNameLabel.snp.top)
            make.right.equalTo(view).offset(-8)
        }
        rateStarImage.snp.makeConstraints { make in
            make.top.equalTo(rateLabel.snp.top)
            make.height.equalTo(rateLabel.snp.height)
            make.right.equalTo(rateLabel.snp.left).offset(-8)
        }
        dateLabelName.snp.makeConstraints { make in
            make.top.equalTo(detailDescriptionLabel.snp.bottom).offset(16)
            make.left.equalTo(view).offset(8)
        }
        dateLabel.snp.makeConstraints { make in
            make.top.equalTo(detailDescriptionLabel.snp.bottom).offset(16)
            make.left.equalTo(dateLabelName.snp.right).offset(8)
        }
    }
    
}
