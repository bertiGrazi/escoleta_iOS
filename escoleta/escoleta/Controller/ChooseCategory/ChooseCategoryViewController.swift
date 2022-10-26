//
//  ChooseCategoryViewController.swift
//  escoleta
//
//  Created by Grazi  Berti on 25/10/22.
//
import UIKit

class ChooseCategoryViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let viewModel = ChooseCategoryViewModel()
    
    private let selectCategoryLabel: UILabel = {
        let label = UILabel()
        label.text = "Selecione um item abaixo"
        label.font = UIFont.systemFont(ofSize: 14)
        label.tintColor = .titleColor
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: UIScreen.main.bounds.width >= 275 ? 140 : 156, height: 184)
        layout.sectionInset = UIEdgeInsets(top: 40, left: 40, bottom: 0, right: 40)
        layout.minimumLineSpacing = 20
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .backgroundColor
        collectionView.register(ChooseCategoryCollectionViewCell.self,
                                forCellWithReuseIdentifier: ChooseCategoryCollectionViewCell.identifier)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .backgroundColor
        collectionView.dataSource = self
        
        setupView()
        setupConstrains()
    }
    
    fileprivate func setupView() {
        view.addSubview(selectCategoryLabel)
        view.addSubview(collectionView)
    }
    
    fileprivate func setupConstrains() {
        NSLayoutConstraint.activate([
            selectCategoryLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            selectCategoryLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            selectCategoryLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            selectCategoryLabel.bottomAnchor.constraint(equalTo: selectCategoryLabel.topAnchor, constant: 10),


            collectionView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            collectionView.topAnchor.constraint(equalTo: selectCategoryLabel.bottomAnchor, constant: 0),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 20),
            collectionView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height),
        ])
    }
    
    // MARK: - Collection View
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.fetchCategoryList().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ChooseCategoryCollectionViewCell.identifier, for: indexPath) as? ChooseCategoryCollectionViewCell else {
            fatalError()
        }
        
        cell.configCell(data: viewModel.fetchCategoryList()[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.size.width/2)-4,
                      height: (view.frame.size.width/2)-4)
    }
}
