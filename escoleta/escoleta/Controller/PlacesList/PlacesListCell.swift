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
        stackView.spacing = 2
        stackView.layer.cornerRadius = 20
        stackView.clipsToBounds = true
        stackView.backgroundColor = .backgroundColor
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    fileprivate let placeImageView: UIImageView = {
        let imageview = UIImageView()
        imageview.contentMode = .scaleAspectFill
        imageview.layer.cornerRadius = 20
        imageview.clipsToBounds = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    
    fileprivate let namePlaceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.textColor = .titleColor
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    fileprivate let categoryLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textColor = .buttonPrimaryColor
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    fileprivate let adressLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .subtitleColor
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    fileprivate let neighborhoodLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .subtitleColor
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    fileprivate let stateLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .subtitleColor
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    fileprivate let numberLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
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
        adressLabel.numberOfLines = 0
        stateLabel.numberOfLines = 0
        
        contentView.addSubview(stackView)
        stackView.addSubview(placeImageView)
        stackView.addSubview(namePlaceLabel)
        stackView.addSubview(categoryLabel)
        stackView.addSubview(adressLabel)
        stackView.addSubview(neighborhoodLabel)
        stackView.addSubview(stateLabel)
        stackView.addSubview(numberLabel)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 20),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: -20),
            stackView.heightAnchor.constraint(equalToConstant: 400),
            
            placeImageView.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 0),
            placeImageView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: 20),
            placeImageView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: -20),
            placeImageView.heightAnchor.constraint(equalToConstant: 200),
            
            namePlaceLabel.topAnchor.constraint(equalTo: placeImageView.bottomAnchor, constant: 16),
            namePlaceLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 40),
            
            namePlaceLabel.topAnchor.constraint(equalTo: placeImageView.bottomAnchor, constant: 16),
            namePlaceLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 40),
            
            categoryLabel.topAnchor.constraint(equalTo: namePlaceLabel.bottomAnchor, constant: 8),
            categoryLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 40),
            
            adressLabel.topAnchor.constraint(equalTo: categoryLabel.bottomAnchor, constant: 8),
            adressLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 40),
            
            neighborhoodLabel.topAnchor.constraint(equalTo: categoryLabel.bottomAnchor, constant: 8),
            neighborhoodLabel.leadingAnchor.constraint(equalTo: adressLabel.trailingAnchor, constant: 2),
            
            stateLabel.topAnchor.constraint(equalTo: adressLabel.bottomAnchor, constant: 2),
            stateLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 40),
            
            numberLabel.topAnchor.constraint(equalTo: stateLabel.bottomAnchor, constant: 2),
            numberLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 40),
        ])
    }
    
    func configCell(data: PlacesListData) {
        self.placeImageView.image = UIImageView(image: UIImage(named: "placeImageDefault")).image
        self.namePlaceLabel.text = data.namePlace
        self.categoryLabel.text = data.category
        self.adressLabel.text = "\(data.adress)" + ","
        self.neighborhoodLabel.text = data.neighborhood
        self.stateLabel.text = data.state
        self.numberLabel.text = "Nº " + "\(data.number)"
    }
}
