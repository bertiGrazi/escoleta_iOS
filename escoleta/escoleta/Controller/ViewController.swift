//
//  ViewController.swift
//  escoleta
//
//  Created by Grazi  Berti on 24/10/22.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - Variable
    
    //MARK: View
    fileprivate let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .backgroundColor
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    fileprivate let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    fileprivate let peopleImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "pessoas")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    fileprivate let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Seu marketplace\nde coleta de resíduos."
        label.tintColor = .titleColor
        label.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    fileprivate let subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Ajudamos pessoas a encontrarem pontos\nde coleta de forma eficiente."
        label.tintColor = .subtitleColor
        label.font = UIFont.systemFont(ofSize: 16)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    fileprivate let searchForCollectionPointsButton: UIButton = {
        let button = UIButton()
        button.setTitle("Pesquisar pontos de coleta", for: .normal)
        button.backgroundColor = .buttonPrimaryColor
        button.tintColor = .white
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    fileprivate let serchView: UIView = {
        let view = UIView()
        view.backgroundColor = .buttonSecondaryColor
        view.layer.cornerRadius = 8
        view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMinYCorner]
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    fileprivate let serchImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "magnifyingglass")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .backgroundColor
        setupView()
        setupConstrains()
    }
    
    fileprivate func setupView() {
        view.addSubview(scrollView)
        scrollView.addSubview(logoImageView)
        scrollView.addSubview(peopleImageView)
        scrollView.addSubview(titleLabel)
        scrollView.addSubview(subtitleLabel)
        scrollView.addSubview(searchForCollectionPointsButton)
        searchForCollectionPointsButton.addSubview(serchView)
        serchView.addSubview(serchImageView)
    }
    
    fileprivate func setupConstrains() {
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
            logoImageView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0),
            logoImageView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 40),
            logoImageView.widthAnchor.constraint(equalToConstant: 100),
            logoImageView.heightAnchor.constraint(equalToConstant: 50),
            
            peopleImageView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor, constant: 35),
            peopleImageView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 150),
            peopleImageView.widthAnchor.constraint(equalToConstant: 300),
            peopleImageView.heightAnchor.constraint(equalToConstant: 75),
            
            titleLabel.topAnchor.constraint(equalTo: peopleImageView.bottomAnchor, constant: 150),
            titleLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
            subtitleLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            
            serchView.topAnchor.constraint(equalTo: searchForCollectionPointsButton.topAnchor, constant: 0),
            serchView.leadingAnchor.constraint(equalTo: searchForCollectionPointsButton.leadingAnchor, constant: 0),
            serchView.bottomAnchor.constraint(equalTo: searchForCollectionPointsButton.bottomAnchor, constant: 0),
            serchView.widthAnchor.constraint(equalToConstant: 50),
            serchView.heightAnchor.constraint(equalToConstant: 50),
            
            serchImageView.centerXAnchor.constraint(equalTo: serchView.centerXAnchor, constant: 0),
            serchImageView.centerYAnchor.constraint(equalTo: serchView.centerYAnchor, constant: 0),
            
            searchForCollectionPointsButton.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 50),
            searchForCollectionPointsButton.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            searchForCollectionPointsButton.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 20),
            searchForCollectionPointsButton.widthAnchor.constraint(equalToConstant: 345),
            searchForCollectionPointsButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
}

