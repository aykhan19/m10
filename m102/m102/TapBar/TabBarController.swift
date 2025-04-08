//
//  TapBarController.swift
//  m102
//
//  Created by Aykhan Ibrahimkhalilli on 29.01.25.
//

import Foundation
import UIKit

class TapBarController: UITabBarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTab()
    }
    
    private func setUpTab() {
        
        let home = self.createTab(
            with: "Əsas",
            and: UIImage(systemName: "house.fill"),
            vc: HomeViewController())
        
        let payment = self.createTab(
            with: "Ödənişlər",
            and: UIImage(systemName: "wallet.bifold.fill"),
            vc: PaymentViewController())
        
        let qr = self.createTab(
            with: "QR",
            and: UIImage(systemName: "qrcode.viewfinder"),
            vc: QRViewController())
        
        let history = self.createTab(
            with: "Tarixçə",
            and: UIImage(systemName: "clock.fill"),
            vc: HistoryViewController())
        
        let profile = self.createTab(
            with: "Profil",
            and: UIImage(systemName: "person.fill"),
            vc: ProfileViewController())
        
        self.setViewControllers([home, payment, qr, history, profile], animated: true)
        
        self.tabBar.backgroundColor = .white
        self.tabBar.tintColor = .black
    }
    
    private func createTab(with title: String, and image: UIImage?, vc: UIViewController) -> UINavigationController {

        let navigationController = UINavigationController(rootViewController: vc)
        
        navigationController.tabBarItem.title = title
        navigationController.tabBarItem.image = image
        navigationController.navigationBar.barTintColor = .background

        return navigationController
    }
}
