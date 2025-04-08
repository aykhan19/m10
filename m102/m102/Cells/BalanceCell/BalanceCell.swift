//
//  BalanceCell.swift
//  m102
//
//  Created by Aykhan Ibrahimkhalilli on 23.01.25.
//

import Foundation
import UIKit

final class BalanceCell: UITableViewCell {
    static let identifier = "BalanceCell"
    
    private lazy var whiteBackground: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var m10Label: UILabel = {
        let label = UILabel()
        label.text = "m10 balansım"
        label.textColor = .systemGray2
        label.font = .systemFont(ofSize: 13, weight: .medium)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var balanceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "5433"
        label.font = .systemFont(ofSize: 40, weight: .bold)
        label.textColor = .black
        label.textAlignment = .left
        return label
    }()
    
    private lazy var aznLabel: UILabel = {
        let label = UILabel()
        label.text = "₼"
        label.textColor = .systemGray2
        label.font = .systemFont(ofSize: 30, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var balancePlusBackground: UIView = {
        let background = UIView()
        background.translatesAutoresizingMaskIntoConstraints = false
        background.backgroundColor = .black
        return background
    }()
    
    private lazy var balanceMinusBackground: UIView = {
        let background = UIView()
        background.translatesAutoresizingMaskIntoConstraints = false
        background.backgroundColor = .black
        return background
    }()
    
    private lazy var plusImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "plus")
        imageView.tintColor = .white
        return imageView
    }()
    
    private lazy var riseBalanceLabel: UILabel = {
        let label = UILabel()
        label.text = "Balans artımı"
        label.font = .systemFont(ofSize: 16, weight: .medium)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var minusImage: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(systemName: "arrow.up.right")
        view.tintColor = .white
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    private lazy var reduceBalanceLabel: UILabel = {
        let label = UILabel()
        label.text = "Köçürmək"
        label.font = .systemFont(ofSize: 16, weight: .medium)
        label.textColor = .white
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
    
    override func layoutSubviews() {
        super.layoutSubviews()
        whiteBackground.layer.cornerRadius = 20
        balancePlusBackground.layer.cornerRadius = 20
        balanceMinusBackground.layer.cornerRadius = 20
    }
    
    private func confiqureUI() {
        contentView.addSubview(whiteBackground)
        contentView.addSubview(m10Label)
        contentView.addSubview(balanceLabel)
        contentView.addSubview(aznLabel)
        
        contentView.addSubview(balancePlusBackground)
        balancePlusBackground.addSubview(plusImage)
        balancePlusBackground.addSubview(riseBalanceLabel)
        
        contentView.addSubview(balanceMinusBackground)
        balanceMinusBackground.addSubview(minusImage)
        balanceMinusBackground.addSubview(reduceBalanceLabel)
        
        
    }


    
    private func confiqureConstraints() {
        
        // WHITE Background
        NSLayoutConstraint.activate([
            whiteBackground.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            whiteBackground.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            whiteBackground.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            whiteBackground.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            whiteBackground.heightAnchor.constraint(equalToConstant: 200)
        ])
        
        // M10 Label
        NSLayoutConstraint.activate([
            m10Label.leadingAnchor.constraint(equalTo: whiteBackground.leadingAnchor, constant: 10),
            m10Label.topAnchor.constraint(equalTo: whiteBackground.topAnchor, constant: 30),
            m10Label.trailingAnchor.constraint(equalTo: whiteBackground.trailingAnchor, constant: -5),

        ])
        
        // BALANCE Label
        NSLayoutConstraint.activate([
            balanceLabel.topAnchor.constraint(equalTo: m10Label.bottomAnchor, constant: 1),
            balanceLabel.leadingAnchor.constraint(equalTo: whiteBackground.leadingAnchor, constant: 12)
        ])
        
        // AZN Label
        NSLayoutConstraint.activate([
            aznLabel.leadingAnchor.constraint(equalTo: balanceLabel.trailingAnchor, constant: 5),
            aznLabel.topAnchor.constraint(equalTo: m10Label.bottomAnchor, constant: 10)
        ])
        
        // BALANCE PLUS Background
        NSLayoutConstraint.activate([
            balancePlusBackground.leadingAnchor.constraint(equalTo: whiteBackground.leadingAnchor, constant: 15),
            balancePlusBackground.heightAnchor.constraint(equalToConstant: 55),
            balancePlusBackground.widthAnchor.constraint(equalToConstant: 165),
            balancePlusBackground.bottomAnchor.constraint(equalTo: whiteBackground.bottomAnchor, constant: -20)
        ])
        
        // BALANCE MINUS Background
        NSLayoutConstraint.activate([
            balanceMinusBackground.bottomAnchor.constraint(equalTo: whiteBackground.bottomAnchor, constant: -20),
            balanceMinusBackground.trailingAnchor.constraint(equalTo: whiteBackground.trailingAnchor, constant: -15),
            balanceMinusBackground.heightAnchor.constraint(equalToConstant: 55),
            balanceMinusBackground.widthAnchor.constraint(equalToConstant: 165)
        ])
        
        // PLUS Image View
        NSLayoutConstraint.activate([
            plusImage.centerYAnchor.constraint(equalTo: balancePlusBackground.centerYAnchor),
            plusImage.leadingAnchor.constraint(equalTo: balancePlusBackground.leadingAnchor, constant: 12),
            plusImage.heightAnchor.constraint(equalToConstant: 25),
            plusImage.widthAnchor.constraint(equalToConstant: 25)
        ])
        
        // RISE Balance Label
        NSLayoutConstraint.activate([
            riseBalanceLabel.leadingAnchor.constraint(equalTo: plusImage.trailingAnchor, constant: 8),
            riseBalanceLabel.centerYAnchor.constraint(equalTo: plusImage.centerYAnchor)
        ])
        
        // MINUS Image View
        NSLayoutConstraint.activate([
            minusImage.centerYAnchor.constraint(equalTo: balanceMinusBackground.centerYAnchor),
            minusImage.leadingAnchor.constraint(equalTo: balanceMinusBackground.leadingAnchor, constant: 12),
            minusImage.heightAnchor.constraint(equalToConstant: 25),
            minusImage.widthAnchor.constraint(equalToConstant: 25)
        ])
        
        // REDUCE Balance Label
        NSLayoutConstraint.activate([
            reduceBalanceLabel.leadingAnchor.constraint(equalTo: minusImage.trailingAnchor, constant: 13),
            reduceBalanceLabel.centerYAnchor.constraint(equalTo: minusImage.centerYAnchor)
        ])
    }
}
