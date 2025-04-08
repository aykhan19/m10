//
//  YouTryCell.swift
//  m102
//
//  Created by Aykhan Ibrahimkhalilli on 29.01.25.
//

import Foundation
import UIKit

class YouTryCell: UITableViewCell {
    static let identifier = "YouTryCell"
    
    var marks = YouTryCellModel.mock()
    
    private lazy var collection: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectView.translatesAutoresizingMaskIntoConstraints = false
        collectView.register(YouTryCollectionViewCell.self, forCellWithReuseIdentifier: YouTryCollectionViewCell.identifier)
        return collectView
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
        contentView.addSubview(collection)
        
        collection.delegate = self
        collection.dataSource = self
        collection.backgroundColor = .clear
    }
    
    private func confiqureConstraints() {
        // COLLECTION View
        NSLayoutConstraint.activate([
            collection.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            collection.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            collection.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            collection.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5),
            collection.heightAnchor.constraint(equalToConstant: 190)
        ])
    }
}

extension YouTryCell: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return marks.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collection.dequeueReusableCell(withReuseIdentifier: YouTryCollectionViewCell.identifier, for: indexPath) as! YouTryCollectionViewCell
        let markIndex = marks[indexPath.row]
        cell.setupModel(with: markIndex)
        return cell
    }
}

extension YouTryCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 140, height: 180 )
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 15
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
//    }
}
