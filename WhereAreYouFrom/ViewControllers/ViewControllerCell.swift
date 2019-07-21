//
//  ViewControllerCell.swift
//  WhereAreYouFrom
//
//  Created by M'haimdat omar on 20-07-2019.
//  Copyright © 2019 M'haimdat omar. All rights reserved.
//

import UIKit

class ViewControllerCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCell()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var isHighlighted: Bool {
        didSet {
            
            UIView.animate(withDuration: 0.27, delay: 0.0, usingSpringWithDamping: 1, initialSpringVelocity: 1.0, options: [.curveEaseOut, .beginFromCurrentState], animations: {
                self.contentView.alpha = self.isHighlighted ? 0.35 : 1
                self.transform = self.isHighlighted ? self.transform.scaledBy(x: 0.96, y: 0.96) : .identity
            })
        }
    }
    
    // MARK: UI
    let licenceNumber: UILabel = {
        let label = UILabel()
        label.text = "....."
        label.textColor = UIColor.black
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textAlignment = .left
        label.numberOfLines = 1
        
        return label
    }()
    
    let city: UILabel = {
        let label = UILabel()
        label.text = "........................."
        label.textColor = UIColor.darkGray
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textAlignment = .left
        label.numberOfLines = 1
        label.sizeToFit()
        
        return label
    }()
    
    // MARK: Setup Cell
    fileprivate func setupCell() {
        roundCorner()
        setCellShadow()
        self.addSubview(licenceNumber)
        self.addSubview(city)
        
        licenceNumber.anchor(top: safeTopAnchor, left: safeLeftAnchor, bottom: nil, right: safeRightAnchor, paddingTop: 15, paddingLeft: 20, paddingBottom: 0, paddingRight: 20)
        
        city.anchor(top: licenceNumber.bottomAnchor, left: safeLeftAnchor, bottom: nil, right: safeRightAnchor, paddingTop: 10, paddingLeft: 20, paddingBottom: 0, paddingRight: 20)
    }
    
    // MARK: Methods
    func setCellShadow() {
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 1)
        self.layer.shadowOpacity = 0.2
        self.layer.shadowRadius = 6.0
        self.layer.masksToBounds = false
        self.layer.cornerRadius = 14
        self.clipsToBounds = false
    }
    
    func roundCorner() {
        self.contentView.layer.cornerRadius = 14
        self.contentView.layer.masksToBounds = true
        self.contentView.layer.borderWidth = 2.0
        self.contentView.layer.borderColor = #colorLiteral(red: 0, green: 0.3834834695, blue: 0.2013034225, alpha: 1)
        self.contentView.backgroundColor = .white
    }
    
}

