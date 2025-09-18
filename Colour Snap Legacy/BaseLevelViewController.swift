//
//  BaseLevelViewController.swift
//  Colour Snap Legacy
//
//  Created by JWI on 18/9/25.
//  Copyright © 2025 JWI. All rights reserved.
//

import Foundation
import UIKit

class BaseLevelViewController: UIViewController {
    let baseLevelUIColourChanger = UIColourChanger()
    let backToMainMenuButton = UIButton(type: .Custom)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: .random(in: 0...0.5), green: .random(in: 0...0.5), blue: .random(in: 0...0.5))
        
        baseLevelUIColourChanger.changeBackgroundColour()
        baseLevelUIColourChanger.onBackgroundColourChange = { newColour in
            UIView.animate(withDuration: 1.5) {
                self.view.backgroundColor = newColour
            }
        }
        
        backToMainMenuButton.setTitle("Back to main menu", for: .Normal)
        backToMainMenuButton.translatesAutoresizingMaskIntoConstraints = false
        backToMainMenuButton.adjustsImageWhenHighlighted = false
        backToMainMenuButton.addAction(for: .AllTouchEvents) {
            self.dismiss(true, completion: nil)
        }
        
        view.addSubview(backToMainMenuButton)
        
        NSLayoutConstraint.activate([
            backToMainMenuButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            backToMainMenuButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
    }
}
