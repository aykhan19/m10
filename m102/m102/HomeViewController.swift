//
//  ViewController.swift
//  m102
//
//  Created by Aykhan Ibrahimkhalilli on 23.01.25.
//

import UIKit

class HomeViewController: UIViewController {
    
    private lazy var backgroundLayer: UIView = {
        let layer = UIView()
        layer.translatesAutoresizingMaskIntoConstraints = false
        layer.backgroundColor = .white
        return layer
    }()

    private lazy var myTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.register(QrCell.self, forCellReuseIdentifier: QrCell.identifier)
        tableView.register(BalanceCell.self, forCellReuseIdentifier: BalanceCell.identifier)
        tableView.register(PaymentsCell.self, forCellReuseIdentifier: PaymentsCell.identifier)
        tableView.register(OurServiceCell.self, forCellReuseIdentifier: OurServiceCell.identifier)
        tableView.register(YouTryCell.self, forCellReuseIdentifier: YouTryCell.identifier)
        return tableView
    }()
    
    private var sections: [Sections] = [.qrCell, .balanceCell, .paymentsCell, .serviceCell, .youTryCell]

    private lazy var gradientLayer: CAGradientLayer = {
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor(resource: .background).cgColor, UIColor.systemGray6.cgColor]
        gradient.locations = [0.0, 0.5, 1.0]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 0.0, y: 1.0)
        return gradient
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        confiqureUI()
        confiqureConstraints()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        gradientLayer.frame = myTableView.frame
        backgroundLayer.frame = myTableView.frame
        backgroundLayer.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    private func confiqureUI() {
        
        view.backgroundColor = .systemBackground
        
        view.addSubview(myTableView)
        
        myTableView.backgroundView = backgroundLayer
        myTableView.delegate = self
        myTableView.dataSource = self
    }
    
    private func confiqureConstraints() {
        NSLayoutConstraint.activate([
            myTableView.topAnchor.constraint(equalTo: view.topAnchor),
            myTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            myTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            myTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }


}
extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let mySection = sections[indexPath.row]
        switch mySection {
        case .qrCell:
            let cell = myTableView.dequeueReusableCell(withIdentifier: QrCell.identifier, for: indexPath) as! QrCell
            cell.backgroundColor = .clear
            return cell
        case .balanceCell:
            let cell = myTableView.dequeueReusableCell(withIdentifier: BalanceCell.identifier, for: indexPath) as! BalanceCell
            cell.backgroundColor = .clear
            return cell
        case .paymentsCell:
            let cell = myTableView.dequeueReusableCell(withIdentifier: PaymentsCell.identifier, for: indexPath) as! PaymentsCell
            cell.backgroundColor = .clear
            return cell
        case .serviceCell:
            let cell = myTableView.dequeueReusableCell(withIdentifier: OurServiceCell.identifier, for: indexPath) as! OurServiceCell
            cell.backgroundColor = .clear
            return cell
        case .youTryCell:
            let cell = myTableView.dequeueReusableCell(withIdentifier: YouTryCell.identifier, for: indexPath) as! YouTryCell
            cell.backgroundColor = .clear
            return cell
        }
            
    }
}
enum Sections {
    case qrCell
    case balanceCell
    case paymentsCell
    case serviceCell
    case youTryCell
}


