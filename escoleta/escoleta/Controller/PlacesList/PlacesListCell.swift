//
//  PlacesListCell.swift
//  escoleta
//
//  Created by Grazi  Berti on 31/10/22.
//

import Foundation
import UIKit

class PlacesListCell: UITableViewCell {
    //MARK: - Variable
    static let identifier = "PlacesListCell"
    
    //MARK: View Properties
    fileprivate let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.backgroundColor = .white
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    fileprivate let placeImageView: UIImageView = {
        let imageview = UIImageView()
        imageview.contentMode = .scaleAspectFit
        imageview.layer.cornerRadius = 12
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    
    fileprivate let namePlaceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .titleColor
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    fileprivate let categoryLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = .buttonPrimaryColor
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    fileprivate let stateLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = .subtitleColor
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .backgroundColor
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        namePlaceLabel.numberOfLines = 0
        categoryLabel.numberOfLines = 0
        stateLabel.numberOfLines = 0
        
        contentView.addSubview(stackView)
        stackView.addSubview(placeImageView)
        stackView.addSubview(namePlaceLabel)
        stackView.addSubview(categoryLabel)
        stackView.addSubview(stateLabel)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            stackView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            stackView.heightAnchor.constraint(equalToConstant: 400),
            
            placeImageView.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 8),
            placeImageView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: 8),
            placeImageView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 8),
            
            namePlaceLabel.topAnchor.constraint(equalTo: placeImageView.bottomAnchor, constant: 16),
            namePlaceLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 8),
            
            namePlaceLabel.topAnchor.constraint(equalTo: placeImageView.bottomAnchor, constant: 16),
            namePlaceLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 8),
            
            categoryLabel.topAnchor.constraint(equalTo: namePlaceLabel.bottomAnchor, constant: 16),
            categoryLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 8),
            
            stateLabel.topAnchor.constraint(equalTo: categoryLabel.bottomAnchor, constant: 32),
            stateLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 8),
        ])
    }
    
    func configCell(data: PlacesListData) {
        self.placeImageView.image = UIImageView(image: UIImage(named: "placeImageDefault")).image
        self.namePlaceLabel.text = data.namePlace
        self.categoryLabel.text = data.category
        self.stateLabel.text = data.adress
    }
}
