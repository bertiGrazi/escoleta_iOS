//
//  PlacesListBusinessModel.swift
//  escoleta
//
//  Created by Grazi  Berti on 31/10/22.
//

import Foundation
import UIKit

class PlacesListBusinessModel: PlacesListBusinessModelProtocol {
    func fetchPlacesList() -> [PlacesListData] {
        return [
            PlacesListData(imagePlace: UIImage(named: "placeImageDefault") ?? UIImage(), namePlace: "Colectoria", category: "Resíduos Eletrôniocos", adress: "Guilherme Gemballa", state: "Santa Catarina", neighborhood: "Jardim América", number: 260),
            PlacesListData(imagePlace: UIImage(named: "placeImageDefault") ?? UIImage(), namePlace: "Colectoria", category: "Resíduos Eletrôniocos", adress: "Guilherme Gemballa", state: "Santa Catarina", neighborhood: "Jardim América", number: 260),
            PlacesListData(imagePlace: UIImage(named: "placeImageDefault") ?? UIImage(), namePlace: "Colectoria", category: "Resíduos Eletrôniocos", adress: "Guilherme Gemballa", state: "Santa Catarina", neighborhood: "Jardim América", number: 260),
            PlacesListData(imagePlace: UIImage(named: "placeImageDefault") ?? UIImage(), namePlace: "Colectoria", category: "Resíduos Eletrôniocos", adress: "Guilherme Gemballa", state: "Santa Catarina", neighborhood: "Jardim América", number: 260),
            PlacesListData(imagePlace: UIImage(named: "placeImageDefault") ?? UIImage(), namePlace: "Colectoria", category: "Resíduos Eletrôniocos", adress: "Guilherme Gemballa", state: "Santa Catarina", neighborhood: "Jardim América", number: 260),
            PlacesListData(imagePlace: UIImage(named: "placeImageDefault") ?? UIImage(), namePlace: "Colectoria", category: "Resíduos Eletrôniocos", adress: "Guilherme Gemballa", state: "Santa Catarina", neighborhood: "Jardim América", number: 260),
        ]
    }
}



