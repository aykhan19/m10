//
//  OurServiceCellModel.swift
//  m102
//
//  Created by Aykhan Ibrahimkhalilli on 27.01.25.
//

import Foundation
import UIKit

struct OurServiceCellModel {
    let message: String
    let images: UIImage
    let backgroundColor: UIColor
    let labelColor: UIColor
    
    static func mock() -> [OurServiceCellModel] {
        return [
            OurServiceCellModel(
                message: "m10-da 20000₼-dək kredit",
                images: .money,
                backgroundColor: .creditViewBackground,
                labelColor: .white),
            
            OurServiceCellModel(
                message: "Umico bonuslar",
                images: .umico,
                backgroundColor: .white,
                labelColor: .black),
            
            OurServiceCellModel(
                message: "BakıKart",
                images: .bakikart,
                backgroundColor: .white,
                labelColor: .black),
            
            OurServiceCellModel(
                message: "Lim10lar",
                images: .limon,
                backgroundColor: .white,
                labelColor: .black),
        ]
    }
}
