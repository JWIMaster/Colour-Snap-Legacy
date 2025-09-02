//
//  ColourChanger.swift
//  Colour Snap Legacy
//
//  Created by JWI on 31/08/2025.
//  Copyright © 2025 JWI. All rights reserved.
//

import Foundation
import UIKit

class colourChanger {
    var backgroundColor: UIColor = .red
    var onBackgroundColourChange: ((UIColor) -> Void)?
    var titleColor: UIColor = .red
    var onTitleColourChange: ((UIColor) -> Void)?
    
    var lastColour: UIColor = .clear
    var currentColour: UIColor = .clear
    var exclusions: Set<UIColor> = [.clear]
    
    var onColourChange: ((UIColor) -> Void)?
    
    var timer: Timer?
    
    /*func DONTTOUCH() {
        timer = Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { timer in
            
            withAnimation(1.5, animation: .CurveEaseInOut) {
                
                self.lastColour = self.currentColour
                let avaliableBackgroundColours = colors.filter( { !self.exclusions.contains($0) } )
                
                if let safeNewColour = avaliableBackgroundColours.randomElement() {
                    self.currentColour = safeNewColour
                    self.exclusions.remove(self.lastColour)
                    self.exclusions.insert(self.currentColour)
                    self.onColourChange?(self.currentColour)
                }
                
                
            }
        }
    }*/
    
    func backgroundColourChanger() {
        let _ = Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { _ in
            withAnimation(1.5, animation: .CurveEaseInOut) {
                self.backgroundColor = UIColor(red: .random(in: 0...0.5), green: .random(in: 0...0.5), blue: .random(in: 0...0.5))
                self.onBackgroundColourChange?(self.backgroundColor)
            }
        }
    }
    
    func titleColourChanger() {
        let _ = Timer.scheduledTimer(withTimeInterval: 0.6, repeats: true) { _ in
            self.titleColor = UIColor(red: .random(in: 0.5...1), green: .random(in: 0.5...1), blue: .random(in: 0.5...1))
            self.onTitleColourChange?(self.titleColor)
        }
    }
}