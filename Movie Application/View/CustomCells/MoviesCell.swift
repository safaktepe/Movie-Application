//
//  MoviesCell.swift
//  The Movie App
//
//  Created by Mert Şafaktepe on 26.06.2022.
//
import UIKit
import SnapKit

class MoviesCell: UITableViewCell {
    
    static let identifier = "CustomMovieCell"
    
    var movieImageView = UIImageView()
    var movieNameLabel = UILabel()
    var realaseDateLabel = UILabel()


    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = CustomColor.hexStringToUIColor(hex: "#082032")
        addSubview(movieImageView)
        addSubview(movieNameLabel)
        addSubview(realaseDateLabel)
        configureImageView()
        configureNameLabel()
        configureDateLabel()
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureImageView() {
        movieImageView.layer.cornerRadius = 10
        movieImageView.clipsToBounds = true
    }
    func configureNameLabel() {
        movieNameLabel.numberOfLines = 0
        movieNameLabel.textColor = .white
        movieNameLabel.adjustsFontSizeToFitWidth = true
        movieNameLabel.font = UIFont.boldSystemFont(ofSize: 18.0)
    }
    func configureDateLabel() {
        realaseDateLabel.numberOfLines = 0
        realaseDateLabel.textColor = .lightGray
        realaseDateLabel.adjustsFontSizeToFitWidth = true
        realaseDateLabel.font = realaseDateLabel.font.withSize(15)
        //realaseDateLabel.font = UIFont(name: "AppleSDGothicNeo-Heavy", size: 442)
    }
    
    func setCell(movie: Movie){
       // movieImageView.image = movie.image
       // movieNameLabel.text = movie.title
    }
    
    //MARK: - Constraints
    func configureConstraints() {
        movieImageView.snp.makeConstraints { make in
            make.top.equalTo(contentView).offset(8)
            make.left.equalTo(contentView).offset(8)
            make.bottom.equalTo(contentView).offset(8)
            make.height.equalTo(100)
            make.width.equalTo(movieImageView.snp.height).multipliedBy(1.2)
        }
        
        movieNameLabel.snp.makeConstraints { make in
            make.top.equalTo(contentView).offset(8)
            make.left.equalTo(movieImageView.snp.right).offset(8)
        }
        
        realaseDateLabel.snp.makeConstraints { make in
            make.top.equalTo(movieNameLabel.snp.bottom).offset(8)
            make.left.equalTo(movieImageView.snp.right).offset(8)
        }
    }
}
