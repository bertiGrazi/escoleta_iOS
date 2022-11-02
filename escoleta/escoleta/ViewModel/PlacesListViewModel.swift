//
//  PlacesListViewModel.swift
//  escoleta
//
//  Created by Grazi  Berti on 31/10/22.
//

import Foundation

class PlacesListViewModel {
    var bussinessModel: PlacesListBusinessModelProtocol = PlacesListBusinessModel()
    
    func fetchPlacesList() -> [PlacesListData] {
        return bussinessModel.fetchPlacesList()
    }
}
