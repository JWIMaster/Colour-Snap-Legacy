//
//  GameViewController.swift
//  Colour Snap Legacy
//
//  Created by JWI on 31/08/2025.
//  Copyright © 2025 JWI. All rights reserved.
//

import Foundation
import UIKit

class GameViewController: UIViewController {
    let backButton = UIButton(type: .custom)
    var myColourChanger: colourChanger = colourChanger()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        myColourChanger.backgroundColourChanger()
        
        let backgroundView = UIView(frame: view.bounds)
        
        self.view.backgroundColor = UIColor(red: .random(in: 0...0.5), green: .random(in:0...0.5), blue: .random(in:0...0.5))
        
        myColourChanger.onBackgroundColourChange = { newColour in
            backgroundView.backgroundColor = newColour
        }
        
        view.addSubview(backgroundView)
        backButton.setTitle(" Back to main menu ", for: .normal)
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.backgroundColor = UIColor.gray.colorWithAlphaComponent(0.4)
        backButton.layer.cornerRadius = 15
        backButton.layer.shadowRadius = 5
        backButton.layer.shadowColor = UIColor.black.CGColor
        backButton.layer.shadowOpacity = 0.5
        backButton.adjustsImageWhenHighlighted = false
        backButton.addAction(for: .TouchUpInside) {
            let mainMenuVC = MainMenuViewController()
            mainMenuVC.modalTransitionStyle = .crossDissolve
            self.presentViewController(mainMenuVC, animated: true, completion: nil)
        }

        view.addSubview(backButton)
        view.layoutIfNeeded()
        

        
        setupConstraints()
        
        

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        backButton.titleLabel?.font = UIFont.systemFontOfSize(backButton.frame.width*0.1)
    }
    
    
    func setupConstraints() {
        view.addConstraint(NSLayoutConstraint(item: backButton, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0))
        view.addConstraint(NSLayoutConstraint(item: backButton, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: view.frame.height*0.05))
        view.addConstraint(NSLayoutConstraint(item: backButton, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.5, constant: 0))
        view.addConstraint(NSLayoutConstraint(item: backButton, attribute: .height, relatedBy: .equal, toItem: backButton, attribute: .width, multiplier: 0.2, constant: 0))
    }
}