//
//  ChooseCategoryCollectionViewCell.swift
//  escoleta
//
//  Created by Grazi  Berti on 25/10/22.
//

import UIKit

class ChooseCategoryCollectionViewCell: UICollectionViewCell {
    static let identifier = "ChooseCategoryCell"
    
    fileprivate let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .degradeGreenColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    fileprivate let iconCategoryImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    fileprivate let nameCategoryLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.tintColor = .titleColor
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
        
        nameCategoryLabel.numberOfLines = 0
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupView() {
        contentView.addSubview(greenView)
        greenView.addSubview(iconCategoryImageView)
        greenView.addSubview(nameCategoryLabel)
    }
    
    fileprivate func setupConstraints() {
        NSLayoutConstraint.activate([
            greenView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            greenView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            greenView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            greenView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            
            iconCategoryImageView.centerXAnchor.constraint(equalTo: greenView.centerXAnchor, constant: 0),
            iconCategoryImageView.centerYAnchor.constraint(equalTo: greenView.centerYAnchor, constant: 0),
            
            nameCategoryLabel.centerXAnchor.constraint(equalTo: greenView.centerXAnchor, constant: 0),
            nameCategoryLabel.topAnchor.constraint(equalTo: iconCategoryImageView.bottomAnchor, constant: 8),
        ])
    }
    
    func configCell(data: ChooseCategoryData) {
        iconCategoryImageView.image = data.iconCategory
        nameCategoryLabel.text = data.nameCategory
    }
}
