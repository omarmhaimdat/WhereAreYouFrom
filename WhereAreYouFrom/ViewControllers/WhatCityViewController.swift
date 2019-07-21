//
//  WhatCityViewController.swift
//  WhereAreYouFrom
//
//  Created by M'haimdat omar on 20-07-2019.
//  Copyright © 2019 M'haimdat omar. All rights reserved.
//

import UIKit

class WhatCityViewController: UIViewController {
    
    let ocrImage: UIImageView = {
        let image = UIImageView(image: UIImage())
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    let city: UILabel = {
       let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont(name: "Avenir-Heavy", size: 24)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 2
        return label
    }()
    
    let dissmissButton: BtnPleinLarge = {
        let button = BtnPleinLarge()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonToDissmiss(_:)), for: .touchUpInside)
        button.setTitle("Done", for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addSubviews()
        setupLayout()
    }
    
    func addSubviews() {
        view.addSubview(dissmissButton)
        view.addSubview(ocrImage)
        view.addSubview(city)
    }
    
    func setupLayout() {
        
        dissmissButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        dissmissButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        dissmissButton.widthAnchor.constraint(equalToConstant: view.frame.width - 40).isActive = true
        dissmissButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -80).isActive = true
        
        city.bottomAnchor.constraint(equalTo: dissmissButton.topAnchor, constant: -80).isActive = true
        city.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        city.widthAnchor.constraint(equalToConstant: view.frame.width - 40).isActive = true
        
        ocrImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        ocrImage.topAnchor.constraint(equalTo: view.safeTopAnchor, constant: 100).isActive = true
        ocrImage.bottomAnchor.constraint(equalTo: city.topAnchor, constant: -100).isActive = true
        ocrImage.widthAnchor.constraint(equalToConstant: view.frame.width - 100).isActive = true
        
    }
    
    @objc func buttonToDissmiss(_ sender: BtnPleinLarge) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
