//
//  UIView+Shadow.swift
//  ABN_business card
//
//  Created by Jolijn Friederichs on 08-11-17.
//  Copyright © 2017 Jolijn Friederichs. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func dropShadow() {
        
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 20)
        self.layer.shadowOpacity = 0.5
        self.layer.shadowRadius = 15
        
        self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        self.layer.shouldRasterize = true
        
        self.layer.rasterizationScale = UIScreen.main.scale
    }
}

