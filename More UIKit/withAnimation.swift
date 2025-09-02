//
//  Animation.swift
//  Colour Snap Legacy
//
//  Created by JWI on 31/08/2025.
//  Copyright © 2025 JWI. All rights reserved.
//

import Foundation
import UIKit

func withAnimation(duration: NSTimeInterval = 0.25,
                   delay: NSTimeInterval = 0,
                   animation: UIViewAnimationOptions = [],
                   repeatAnimation: Bool = false,
                   animations: () -> Void) {
    
    var finalOptions = animation
    if repeatAnimation {
        finalOptions = finalOptions.union(.Repeat)
    }
    
    UIView.animateWithDuration(duration,
                               delay: delay,
                               options: finalOptions,
                               animations: animations,
                               completion: nil)
}