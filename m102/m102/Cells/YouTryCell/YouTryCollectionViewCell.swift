//
//  YouTryCollectionViewCell.swift
//  m102
//
//  Created by Aykhan Ibrahimkhalilli on 30.01.25.
//

import Foundation
import UIKit

class YouTryCollectionViewCell: UICollectionViewCell {
    static let identifier = "YouTryCollectionViewCell"
    
    private lazy var grayBackground: UIView = {
        let background = UIView()
        background.translatesAutoresizingMaskIntoConstraints = false
        return background
    }()
    
    private lazy var tryImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var tryLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = .zero
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 15, weight: .medium)
        label.textColor = .black
        return label
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        confiqureUI()
        confiqureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        grayBackground.layer.cornerRadius = 12
    }
    
    func setupModel(with mark: YouTryCellModel) {
        grayBackground.backgroundColor = mark.backgroundColor
        tryImage.image = mark.image
        tryLabel.text = mark.message
    }
    
    private func confiqureUI() {
        contentView.addSubview(grayBackground)
        
        grayBackground.addSubview(tryImage)
        grayBackground.addSubview(tryLabel)
    }
    
    private func confiqureConstraints() {
        // GRAY Background
        NSLayoutConstraint.activate([
            grayBackground.topAnchor.constraint(equalTo: contentView.topAnchor),
            grayBackground.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            grayBackground.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            grayBackground.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        // TRY IMAGE View
        NSLayoutConstraint.activate([
            tryImage.centerXAnchor.constraint(equalTo: grayBackground.centerXAnchor),
            tryImage.centerYAnchor.constraint(equalTo: grayBackground.centerYAnchor),
            tryImage.heightAnchor.constraint(equalToConstant: 70),
            tryImage.widthAnchor.constraint(equalToConstant: 70)
        ])
        
        // TRY LABEL
        NSLayoutConstraint.activate([
            tryLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            tryLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            tryLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            tryLabel.topAnchor.constraint(equalTo: grayBackground.bottomAnchor, constant: 5)
        ])
    }
}

