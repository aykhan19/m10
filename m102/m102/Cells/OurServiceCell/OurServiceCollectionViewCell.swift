//
//  OurServiceCell.swift
//  m102
//
//  Created by Aykhan Ibrahimkhalilli on 27.01.25.
//

import Foundation
import UIKit

class OurServiceCollectionViewCell: UICollectionViewCell {
    static let identifier = "OurServiceCollectionViewCell"
    
    private lazy var whiteBackground: UIView = {
        let background = UIView()
        background.translatesAutoresizingMaskIntoConstraints = false
        background.backgroundColor = .white
        return background
    }()
    
    private lazy var labels: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 16, weight: .medium)
        label.numberOfLines = .zero
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var imageViews: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        confiqureUI()
        confiqureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        whiteBackground.layer.cornerRadius = 20
    }
    
    func setUp(with item: OurServiceCellModel) {
        labels.text = item.message
        imageViews.image = item.images
        whiteBackground.backgroundColor = item.backgroundColor
        labels.textColor = item.labelColor
    }
    
    func labelsColor(with color: UIColor) {
        
    }
    
    private func confiqureUI() {
        contentView.addSubview(whiteBackground)
        
        whiteBackground.addSubview(labels)
        whiteBackground.addSubview(imageViews)
    }
    
    private func confiqureConstraints() {
        // WHITE Background
        NSLayoutConstraint.activate([
            whiteBackground.topAnchor.constraint(equalTo: contentView.topAnchor),
            whiteBackground.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            whiteBackground.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            whiteBackground.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
//            whiteBackground.heightAnchor.constraint(equalToConstant: 130)
        ])
        
        // LABELS
        NSLayoutConstraint.activate([
            labels.topAnchor.constraint(equalTo: whiteBackground.topAnchor, constant: 10),
            labels.leadingAnchor.constraint(equalTo: whiteBackground.leadingAnchor, constant: 12),
            labels.trailingAnchor.constraint(equalTo: whiteBackground.trailingAnchor, constant: -12)
        ])
        
        // IMAGE Views
        NSLayoutConstraint.activate([
            imageViews.trailingAnchor.constraint(equalTo: whiteBackground.trailingAnchor, constant: -12),
            imageViews.bottomAnchor.constraint(equalTo: whiteBackground.bottomAnchor, constant: -10),
            imageViews.heightAnchor.constraint(equalToConstant: 70),
            imageViews.widthAnchor.constraint(equalToConstant: 70)
        ])
    }
}


