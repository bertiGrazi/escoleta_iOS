//
//  PlacesListViewController.swift
//  escoleta
//
//  Created by Grazi  Berti on 31/10/22.
//

import UIKit

class PlacesListViewController: UIViewController {
    //MARK: Variable
    let cellHeight: CGFloat = 400
    var viewModel = PlacesListViewModel()
    
    //MARK: View Properties
    fileprivate let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.backgroundColor = .backgroundColor
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    fileprivate let filterPlacesListSearchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.placeholder = "insira o nome do lugar desejado"
        searchBar.keyboardType = .alphabet
        searchBar.sizeToFit()
        searchBar.backgroundColor = .backgroundColor
        return searchBar
    }()
    
    fileprivate let foundPlacesLabel: UILabel = {
        let label = Utilities().attributedFoundPlacesText("2 pontos", " encontrados")
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    fileprivate let tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .backgroundColor
        tableView.separatorStyle = .none
        tableView.register(PlacesListCell.self, forCellReuseIdentifier: PlacesListCell.identifier)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        
        tableView.delegate = self
        tableView.dataSource = self
        
        view.backgroundColor = .backgroundColor
        setupLayout()
        setupConstraints()
    }
    
    fileprivate func setupLayout() {
        view.addSubview(stackView)
        stackView.addSubview(filterPlacesListSearchBar)
        view.addSubview(foundPlacesLabel)
        view.addSubview(tableView)
    }
    
    fileprivate func setupConstraints() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            stackView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            stackView.heightAnchor.constraint(equalToConstant: 60),
            
            filterPlacesListSearchBar.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 20),
            filterPlacesListSearchBar.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 20),
            filterPlacesListSearchBar.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: 20),
            
            foundPlacesLabel.topAnchor.constraint(equalTo: filterPlacesListSearchBar.bottomAnchor, constant: 20),
            foundPlacesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            tableView.topAnchor.constraint(equalTo: foundPlacesLabel.bottomAnchor, constant: 20),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
        ])
    }
}

//MARK: - UITableViewDelegate
extension PlacesListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return cellHeight
    }
    
}

//MARK: - UITableViewDataSource
extension PlacesListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.fetchPlacesList().count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PlacesListCell.identifier, for: indexPath) as? PlacesListCell else { return UITableViewCell() }
        cell.configCell(data: viewModel.fetchPlacesList()[indexPath.row])
        return cell
    }
    
}
