//
//  UIColourChanger.swift
//  Colour Snap Legacy
//
//  Created by JWI on 18/9/25.
//  Copyright © 2025 JWI. All rights reserved.
//

import Foundation
import UIKit

class UIColourChanger {
    var currentBackgroundColour: UIColor = .clear
    var onBackgroundColourChange: ((UIColor) -> Void)?
    
    var currentTitleColour: UIColor = .clear
    var onTitleColourChange: ((UIColor) -> Void)?
    
    
    
    func changeBackgroundColour() {
        let _ = Timer.scheduledTimer(withTimeInterval: 1.5, repeats: true) { _ in
            self.currentBackgroundColour = UIColor(red: .random(in: 0...0.5), green: .random(in: 0...0.5), blue: .random(in: 0...0.5))
            self.onBackgroundColourChange?(self.currentBackgroundColour)
        }
    }
    
    func changeTitleColour() {
        let _ = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { _ in
            self.currentTitleColour = UIColor(red: .random(in: 0.5...1), green: .random(in: 0.5...1), blue: .random(in: 0.5...1))
            self.onTitleColourChange?(self.currentTitleColour)
        }
    }
}
