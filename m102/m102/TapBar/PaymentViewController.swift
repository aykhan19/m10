//
//  PaymentViewController.swift
//  m102
//
//  Created by Aykhan Ibrahimkhalilli on 29.01.25.
//

import Foundation
import UIKit

class PaymentViewController: UIViewController {
    
    private lazy var paymentsLabel: UILabel = {
        let label = UILabel()
        label.text = "Ödənişlər"
        label.textColor = .black
        label.font = .systemFont(ofSize: 32, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var searchImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "magnifyingglass")
        imageView.tintColor = .black
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        confiqureUI()
        confiqureConstraints()
    }
    
    private func confiqureUI() {
        view.backgroundColor = .systemBackground
        
        view.addSubview(paymentsLabel)
        view.addSubview(searchImage)
    }
    
    private func confiqureConstraints() {
        NSLayoutConstraint.activate([
            paymentsLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            paymentsLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10)
        ])
        
        NSLayoutConstraint.activate([
            searchImage.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            searchImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            searchImage.heightAnchor.constraint(equalToConstant: 35),
            searchImage.widthAnchor.constraint(equalToConstant: 35)
        ])
    }
}
