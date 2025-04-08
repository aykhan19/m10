//
//  QrCell.swift
//  m102
//
//  Created by Aykhan Ibrahimkhalilli on 23.01.25.
//

import Foundation
import UIKit

final class QrCell: UITableViewCell {
    
    static let identifier = "QrCell"
    
    private lazy var qrImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(resource: .imagee)
        image.tintColor = .black
        image.backgroundColor = .white
        image.layer.cornerRadius = 16
        image.layer.borderColor = UIColor.black.cgColor
        image.layer.borderWidth = 1.1
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    private lazy var qrLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.textAlignment = .left
        label.textColor = .black
        label.text = "Mənim QR"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        confiqureUI()
        confiqureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func confiqureUI() {
        
        contentView.addSubview(qrImage)
        contentView.addSubview(qrLabel)
    }
        
    private func confiqureConstraints() {
            NSLayoutConstraint.activate([
                qrImage.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor),
                qrImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
                qrImage.heightAnchor.constraint(equalToConstant: 43),
                qrImage.widthAnchor.constraint(equalToConstant: 43),
            ])
            
            NSLayoutConstraint.activate([
                qrLabel.leadingAnchor.constraint(equalTo: qrImage.trailingAnchor, constant: 12),
                qrLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
                qrLabel.centerYAnchor.constraint(equalTo: qrImage.centerYAnchor)
            ])
        }
    }
