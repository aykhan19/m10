//
//  YouTryCellModel.swift
//  m102
//
//  Created by Aykhan Ibrahimkhalilli on 30.01.25.
//

import Foundation
import UIKit

struct YouTryCellModel {
    let message: String
    let backgroundColor: UIColor
    let image: UIImage
    
    static func mock() -> [YouTryCellModel] {
        return [
            YouTryCellModel(
                message: "Gediş haqqını BakıKart QR ilə ödə",
                backgroundColor: UIColor.systemGray5.withAlphaComponent(0.70),
                image: .bakiKartQr),
            
            YouTryCellModel(
                message: "m10 pullarını güvəndə necə saxlamalı",
                backgroundColor: UIColor.systemGray5.withAlphaComponent(0.70),
                image: .moneySecure),
            
            YouTryCellModel(
                message: "Beynəlxalq pul köçürmələri",
                backgroundColor: UIColor.systemGray5.withAlphaComponent(0.70),
                image: .moneyTransfer),
            
            YouTryCellModel(
                message: "MilliÖn axtarma, m10 ilə ödə",
                backgroundColor: UIColor.systemGray5.withAlphaComponent(0.70),
                image: .milliOn),
            
            YouTryCellModel(
                message: "Kassalarda ödəniş et",
                backgroundColor: UIColor.systemGray5.withAlphaComponent(0.70),
                image: .checkoutPayments),
            
            YouTryCellModel(
                message: "Qaz pulunu evdən çıxmadan ödə",
                backgroundColor: UIColor.systemGray5.withAlphaComponent(0.70),
                image: .utility),
            
            YouTryCellModel(
                message: "0₼ komissiya ilə nağdlaşdır",
                backgroundColor: UIColor.systemGray5.withAlphaComponent(0.70),
                image: .cashATMs)
        ]
    }
}
