//
//  ChooseCategoryViewModel.swift
//  escoleta
//
//  Created by Grazi  Berti on 25/10/22.
//

import Foundation

class ChooseCategoryViewModel {
    var bussinessModel: ChooseCategoryProtocol = ChooseCategoryBussinessModel()
    
    func fetchCategoryList() -> [ChooseCategoryData] {
        return bussinessModel.featchCategoryList()
    }
}
