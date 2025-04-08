//
//  OurServiceCell.swift
//  m102
//
//  Created by Aykhan Ibrahimkhalilli on 27.01.25.
//

import Foundation
import UIKit

class OurServiceCell: UITableViewCell {
    static let identifier = "OurServiceCell"
    
    var services = OurServiceCellModel.mock()
    
    private lazy var collection: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.backgroundColor = .clear
        collection.register(OurServiceCollectionViewCell.self, forCellWithReuseIdentifier: OurServiceCollectionViewCell.identifier)
        return collection
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
        
    }
    
    private func confiqureConstraints() {
        // COLLECTION View
        NSLayoutConstraint.activate([
            collection.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
                collection.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
                collection.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
                collection.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            collection.heightAnchor.constraint(equalToConstant: 300)
        ])
    }
}

extension OurServiceCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return services.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collection.dequeueReusableCell(withReuseIdentifier: OurServiceCollectionViewCell.identifier, for: indexPath) as! OurServiceCollectionViewCell
        let service = services[indexPath.row]
        cell.setUp(with: service)
        return cell
    }
}

extension OurServiceCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/2 - 5, height: collectionView.frame.height/2 - 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0)
    }
}
