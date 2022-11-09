//
//  RegisterCollectionPointViewController.swift
//  escoleta
//
//  Created by Grazi  Berti on 08/11/22.
//

import UIKit

class RegisterCollectionPointViewController: UIViewController {
    //MARK: - Variable
    
    //MARK: - View
    fileprivate let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .white
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    fileprivate let collectionPointDataLabel: UILabel = {
        let label = UILabel()
        label.text = "Dados da entidade"
        label.tintColor = .titleColor
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    fileprivate let formStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.backgroundColor = .white
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    fileprivate let collectionPointNameLabel: UILabel = {
        let label = Utilities().titleTextField("Nome da entidade")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    fileprivate let nameCollectionTextField: UITextField = {
        let textField = Utilities().collectionTextField(.default)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    fileprivate let collectionPointAdressLabel: UILabel = {
        let label = Utilities().titleTextField("Endereço")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    fileprivate let adressCollectionTextField: UITextField = {
        let textField = Utilities().collectionTextField(.default)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    fileprivate let collectionPointNumberLabel: UILabel = {
        let label = Utilities().titleTextField("Número")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    fileprivate let numberCollectionTextField: UITextField = {
        let textField = Utilities().collectionTextField(.default)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    fileprivate let collectionPointCityLabel: UILabel = {
        let label = Utilities().titleTextField("Cidade")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    fileprivate let cityCollectionTextField: UITextField = {
        let textField = Utilities().collectionTextField(.default)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    fileprivate let collectionPointStateLabel: UILabel = {
        let label = Utilities().titleTextField("Estado")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    fileprivate let stateCollectionTextField: UITextField = {
        let textField = Utilities().collectionTextField(.default)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupLayout()
        setupLayoutConstrains()
    }
    
    fileprivate func setupLayout() {
        view.addSubview(scrollView)
        scrollView.addSubview(collectionPointDataLabel)
        scrollView.addSubview(formStackView)
        formStackView.addSubview(collectionPointNameLabel)
        formStackView.addSubview(nameCollectionTextField)
        formStackView.addSubview(collectionPointAdressLabel)
        formStackView.addSubview(adressCollectionTextField)
        formStackView.addSubview(collectionPointNumberLabel)
        formStackView.addSubview(numberCollectionTextField)
        formStackView.addSubview(collectionPointCityLabel)
        formStackView.addSubview(cityCollectionTextField)
        formStackView.addSubview(collectionPointStateLabel)
        formStackView.addSubview(stateCollectionTextField)
    }
    
    fileprivate func setupLayoutConstrains() {
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
            collectionPointDataLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 20),
            collectionPointDataLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            
            formStackView.topAnchor.constraint(equalTo: collectionPointDataLabel.bottomAnchor, constant: 8),
            formStackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0),
            formStackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0),
            formStackView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            formStackView.heightAnchor.constraint(equalToConstant: 360),
            
            collectionPointNameLabel.topAnchor.constraint(equalTo: formStackView.topAnchor, constant: 8),
            collectionPointNameLabel.leadingAnchor.constraint(equalTo: formStackView.leadingAnchor, constant: 20),
            
            nameCollectionTextField.topAnchor.constraint(equalTo: collectionPointNameLabel.bottomAnchor, constant: 8),
            nameCollectionTextField.leadingAnchor.constraint(equalTo: formStackView.leadingAnchor, constant: 20),
            nameCollectionTextField.trailingAnchor.constraint(equalTo: formStackView.trailingAnchor, constant: -20),
            nameCollectionTextField.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            nameCollectionTextField.heightAnchor.constraint(equalToConstant: 50),
            
            collectionPointAdressLabel.topAnchor.constraint(equalTo: nameCollectionTextField.bottomAnchor, constant: 8),
            collectionPointAdressLabel.leadingAnchor.constraint(equalTo: formStackView.leadingAnchor, constant: 20),
            
            adressCollectionTextField.topAnchor.constraint(equalTo: collectionPointAdressLabel.bottomAnchor, constant: 8),
            adressCollectionTextField.leadingAnchor.constraint(equalTo: formStackView.leadingAnchor, constant: 20),
            adressCollectionTextField.trailingAnchor.constraint(equalTo: formStackView.trailingAnchor, constant: -20),
            adressCollectionTextField.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            adressCollectionTextField.heightAnchor.constraint(equalToConstant: 50),
            
            collectionPointNumberLabel.topAnchor.constraint(equalTo: adressCollectionTextField.bottomAnchor, constant: 8),
            collectionPointNumberLabel.leadingAnchor.constraint(equalTo: formStackView.leadingAnchor, constant: 20),
            
            numberCollectionTextField.topAnchor.constraint(equalTo: collectionPointNumberLabel.bottomAnchor, constant: 8),
            numberCollectionTextField.leadingAnchor.constraint(equalTo: formStackView.leadingAnchor, constant: 20),
            numberCollectionTextField.widthAnchor.constraint(equalToConstant: 70),
            numberCollectionTextField.heightAnchor.constraint(equalToConstant: 50),
            
            collectionPointCityLabel.topAnchor.constraint(equalTo: adressCollectionTextField.bottomAnchor, constant: 8),
            collectionPointCityLabel.leadingAnchor.constraint(equalTo: collectionPointNumberLabel.trailingAnchor, constant: 32),
            
            cityCollectionTextField.topAnchor.constraint(equalTo: collectionPointCityLabel.bottomAnchor, constant: 8),
            cityCollectionTextField.leadingAnchor.constraint(equalTo: numberCollectionTextField.trailingAnchor, constant: 14),
            cityCollectionTextField.trailingAnchor.constraint(equalTo: formStackView.trailingAnchor, constant: -20),
            cityCollectionTextField.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            cityCollectionTextField.heightAnchor.constraint(equalToConstant: 50),
            
            collectionPointStateLabel.topAnchor.constraint(equalTo: numberCollectionTextField.bottomAnchor, constant: 8),
            collectionPointStateLabel.leadingAnchor.constraint(equalTo: formStackView.leadingAnchor, constant: 20),
            
            stateCollectionTextField.topAnchor.constraint(equalTo: collectionPointStateLabel.bottomAnchor, constant: 8),
            stateCollectionTextField.leadingAnchor.constraint(equalTo: formStackView.leadingAnchor, constant: 20),
            stateCollectionTextField.trailingAnchor.constraint(equalTo: formStackView.trailingAnchor, constant: -20),
            stateCollectionTextField.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            stateCollectionTextField.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
}
