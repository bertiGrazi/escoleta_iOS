//
//  Utilities.swift
//  escoleta
//
//  Created by Grazi  Berti on 02/11/22.
//

import Foundation
import UIKit

class Utilities {
    func attributedFoundPlacesText(_ firstText: String, _ secondText: String) -> UILabel {
        let label = UILabel()
        
        let attributedText = NSMutableAttributedString(string: firstText, attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16), NSMutableAttributedString.Key.foregroundColor: UIColor.subtitleColor])
        attributedText.append(NSMutableAttributedString(string: secondText, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16), NSMutableAttributedString.Key.foregroundColor: UIColor.suportTextColor]))
        
        label.attributedText = attributedText
        
        return label
    }
    
    func titleTextField(_ placeholderTitle: String) -> UILabel {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.text = placeholderTitle
        label.numberOfLines = 0
        label.tintColor = .subtitleColor
        return label
    }
    
    func collectionTextField(_ keyboardAppearance: UIKeyboardAppearance) -> UITextField {
        let textField = UITextField()
        textField.backgroundColor = .backgroundColor
        textField.layer.cornerRadius = 4
        textField.keyboardAppearance = keyboardAppearance
        return textField
    }
}
