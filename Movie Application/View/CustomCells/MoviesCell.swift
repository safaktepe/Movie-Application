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

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(movieImageView)
        addSubview(movieNameLabel)
        configureImageView()
        configureNameLabel()
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
        movieNameLabel.textColor = .black
        movieNameLabel.adjustsFontSizeToFitWidth = true
        movieNameLabel.font = UIFont(name: movieNameLabel.font.fontName, size: 44)
    }
    
    func setCell(movie: Movie){
       // movieImageView.image = movie.image
        movieNameLabel.text = movie.title
    }
    
    //MARK: - Constraints
    func configureConstraints() {
        movieImageView.snp.makeConstraints { make in
            make.top.equalTo(contentView).offset(8)
            make.left.equalTo(contentView).offset(8)
            make.bottom.equalTo(contentView).offset(8)
            make.height.equalTo(80)
            make.width.equalTo(movieImageView.snp.height).multipliedBy(1.5)
        }
        
        movieNameLabel.snp.makeConstraints { make in
            make.centerY.equalTo(self.contentView)
            make.left.equalTo(movieImageView.snp.right).offset(8)
            make.height.equalTo(24)
        }
    }
}
