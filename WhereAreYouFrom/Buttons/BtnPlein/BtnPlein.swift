//
//  BtnPlein.swift
//  exmachina
//
//  Created by M'haimdat omar on 30-05-2019.
//  Copyright © 2019 M'haimdat omar. All rights reserved.
//

import UIKit

class BtnPlein: Button {
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    var myValue: Int
    
    ///Constructor: - init
    override init(frame: CGRect) {
        // set myValue before super.init is called
        self.myValue = 0
        
        super.init(frame: frame)
        layer.borderWidth = 6/UIScreen.main.nativeScale
        layer.backgroundColor = UIColor(red:0.24, green:0.51, blue:1.00, alpha:1.0).cgColor
        setTitleColor(.white, for: .normal)
        titleLabel?.font = UIFont(name: "Avenir", size: 22)
        layer.borderColor = UIColor(red:0.24, green:0.51, blue:1.00, alpha:1.0).cgColor
        layer.cornerRadius = 5
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

