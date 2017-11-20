//
//  ViewController.swift
//  ABN_business card
//
//  Created by Jolijn Friederichs on 08-11-17.
//  Copyright © 2017 Jolijn Friederichs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bussinessCardView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var backLogo: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var flipButton: UIButton!
    @IBOutlet weak var shadowView: UIView!
    
    var showingFront = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showFront()
        
        titleLabel.text = "iOS Developer"
        nameLabel.text = "Jolijn Friederichs"
        
        bussinessCardView.layer.cornerRadius = 8
        flipButton.layer.cornerRadius = 25
        flipButton.dropShadow()
        shadowView.dropShadow()
    }
    
    @IBAction func didTapFlipButton(_ sender: Any) {
        
        var option: UIViewAnimationOptions = .transitionFlipFromLeft
        
        if showingFront {
            showBack()
            showingFront = false
            option = .transitionFlipFromLeft
        } else {
            showFront()
            showingFront = true
            option = .transitionFlipFromRight
        }
        
        UIView.transition(with: bussinessCardView, duration: 1, options: option, animations: {}, completion: nil)
    }
    
    @IBAction func didSlide(_ sender: UISlider) {
        
        let newXCoordinate = CGFloat(sender.value)
        
        shadowView.frame.origin.x = newXCoordinate
        bussinessCardView.frame.origin.x = newXCoordinate
    }
    
    func showFront() {
        titleLabel.isHidden = true
        backLogo.isHidden = true
        nameLabel.isHidden = true
        
        imageView.isHidden = false
    }
    
    func showBack() {
        titleLabel.isHidden = false
        backLogo.isHidden = false
        nameLabel.isHidden = false
        
        imageView.isHidden = true
    }
}
