//
//  PaymentsCell.swift
//  m102
//
//  Created by Aykhan Ibrahimkhalilli on 27.01.25.
//

import Foundation
import UIKit

final class PaymentsCell: UITableViewCell {
    static let identifier = "PaymentsCell"
    
    private lazy var paperImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(resource: .paparImageView)
        return imageView
    }()
    
    private lazy var whitebackground: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var myPaymentsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 18, weight: .medium)
        label.text = "Mənim ödənişlərim"
        label.textColor = .black
        label.textAlignment = .left
        return label
    }()
    
    private lazy var paymentsCountLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.text = "Yadda saxladığın 8 ödənişin var"
        label.textColor = .systemGray
        label.textAlignment = .left
        return label
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        whitebackground.layer.cornerRadius = 20
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        confiqureUI()
        confiqureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func confiqureUI() {
        contentView.addSubview(whitebackground)
        
        whitebackground.addSubview(paperImageView)
        whitebackground.addSubview(myPaymentsLabel)
        whitebackground.addSubview(paymentsCountLabel)
        
    }
    
    private func confiqureConstraints() {
        // WHITE Background
        NSLayoutConstraint.activate([
            whitebackground.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            whitebackground.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            whitebackground.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            whitebackground.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            whitebackground.heightAnchor.constraint(equalToConstant: 80)
        ])
        
        // PAPER Image View
        NSLayoutConstraint.activate([
            paperImageView.leadingAnchor.constraint(equalTo: whitebackground.leadingAnchor, constant: 12),
            paperImageView.topAnchor.constraint(equalTo: whitebackground.topAnchor, constant: 15),
            paperImageView.heightAnchor.constraint(equalToConstant: 60),
            paperImageView.widthAnchor.constraint(equalToConstant: 60)
        ])
        
        // MY PAYMENTS Label
        NSLayoutConstraint.activate([
            myPaymentsLabel.topAnchor.constraint(equalTo: whitebackground.topAnchor, constant: 20),
            myPaymentsLabel.leadingAnchor.constraint(equalTo: paperImageView.trailingAnchor, constant: 7),
            myPaymentsLabel.trailingAnchor.constraint(equalTo: whitebackground.trailingAnchor, constant: -5),
            myPaymentsLabel.heightAnchor.constraint(equalToConstant: 22)
        ])
        
        // PAYMENTS COUNT Label
        NSLayoutConstraint.activate([
            paymentsCountLabel.topAnchor.constraint(equalTo: myPaymentsLabel.bottomAnchor, constant: 1),
            paymentsCountLabel.leadingAnchor.constraint(equalTo: paperImageView.trailingAnchor, constant: 7),
            paymentsCountLabel.trailingAnchor.constraint(equalTo: whitebackground.trailingAnchor, constant: -5)
        ])

    }
}
