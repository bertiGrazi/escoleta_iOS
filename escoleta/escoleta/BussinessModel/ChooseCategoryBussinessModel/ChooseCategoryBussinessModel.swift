//
//  ChooseCategoryBussinessModel.swift
//  escoleta
//
//  Created by Grazi  Berti on 25/10/22.
//

import Foundation
import UIKit

class ChooseCategoryBussinessModel: ChooseCategoryProtocol {
    func featchCategoryList() -> [ChooseCategoryData] {
        return [
            ChooseCategoryData(iconCategory: UIImage(named: "batteries") ?? UIImage() , nameCategory: "Pilhas e Baterias"),
            ChooseCategoryData(iconCategory: UIImage(named: "electronics") ?? UIImage(), nameCategory: "Resíduos\nEletrônicos"),
            ChooseCategoryData(iconCategory: UIImage(named: "lamps") ?? UIImage(), nameCategory: "Lâmpadas"),
            ChooseCategoryData(iconCategory: UIImage(named: "oil") ?? UIImage(), nameCategory: "Óleo de Cozinha"),
            ChooseCategoryData(iconCategory: UIImage(named: "organic") ?? UIImage(), nameCategory: "Resíduos Orgânicos"),
            ChooseCategoryData(iconCategory: UIImage(named: "paperAndCardboard") ?? UIImage(), nameCategory: "Papéis e Papelão"),
        ]
    }
    
}
