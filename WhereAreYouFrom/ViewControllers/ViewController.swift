//
//  ViewController.swift
//  WhereAreYouFrom
//
//  Created by M'haimdat omar on 20-07-2019.
//  Copyright © 2019 M'haimdat omar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let cellId = "cellId"
    var citiesCollection = [City]()
    
    var newCollection: UICollectionView = {
        
        let collection = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        collection.backgroundColor = UIColor.clear
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.isScrollEnabled = true
        collection.showsVerticalScrollIndicator = false
        
        return collection
    }()
    
    var persistenceManager: PersistenceManager = PersistenceManager.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupTabBar()
        self.setupCollection()
        self.setupCollectionView()
        getCity()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.newCollection.reloadData()
    }
    
    func setupTabBar() {
        view.backgroundColor = UIColor.white
        navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.title = "Licence plates"
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.barTintColor = .lightText
        self.setNeedsStatusBarAppearanceUpdate()
        self.navigationItem.largeTitleDisplayMode = .automatic
        self.navigationController?.navigationBar.barStyle = .default
        self.tabBarController?.tabBar.isHidden = false
    }
    
    func setupCollection() {
        
        self.view.addSubview(newCollection)
        
        newCollection.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        newCollection.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        newCollection.heightAnchor.constraint(equalToConstant: view.frame.height).isActive = true
        newCollection.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        newCollection.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        newCollection.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
    }
    
    func setupCollectionView() {
        newCollection.backgroundColor = .white
        newCollection.register(ViewControllerCell.self, forCellWithReuseIdentifier: cellId)
        newCollection.alwaysBounceVertical = true
        newCollection.delegate = self
        newCollection.dataSource = self
    }
    
    
    func getCity() {
        let cities = persistenceManager.fetch(City.self)
        self.citiesCollection = cities.sorted(by: {$0.id < $1.id})
        self.newCollection.reloadData()
    }
    
}

