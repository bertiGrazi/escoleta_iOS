//
//  Extensions.swift
//  escoleta
//
//  Created by Grazi  Berti on 24/10/22.
//

import UIKit

extension UIColor {
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
    
    static let backgroundColor = UIColor.rgb(red: 240, green: 240, blue: 245)
    static let titleColor = UIColor.rgb(red: 50, green: 33, blue: 83)
    static let subtitleColor = UIColor.rgb(red: 108, green: 108, blue: 128)
    static let buttonPrimaryColor = UIColor.rgb(red: 52, green: 203, blue: 121)
    static let buttonSecondaryColor = UIColor.rgb(red: 47, green: 184, blue: 110)
    static let degradeGreenColor = UIColor.rgb(red: 225, green: 250, blue: 236)
}
