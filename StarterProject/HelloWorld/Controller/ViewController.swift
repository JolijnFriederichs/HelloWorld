//
//  ViewController.swift
//  HelloWorld
//
//  Created by Jolijn Friederichs on 08-11-17.
//  Copyright © 2017 Any. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var businessCardView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        shadowView.dropShadow()
    }
}

