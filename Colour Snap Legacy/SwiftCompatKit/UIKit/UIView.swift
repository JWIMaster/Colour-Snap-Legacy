#if !swift(>=3.0)
//
//  UIView.swift
//  Colour Snap Legacy 2
//
//  Created by JWI on 4/09/2025.
//  Copyright © 2025 JWI. All rights reserved.
//

import UIKit

extension UIView {
    
    class func transition(with view: UIView,
                               duration: NSTimeInterval,
                               options: UIViewAnimationOptions = [],
                               animations: (() -> Void)?,
                               completion: ((Bool) -> Void)? = nil) {
        
        UIView.transitionWithView(view,
                                  duration: duration,
                                  options: options,
                                  animations: animations,
                                  completion: completion)
    }
    
    class func animate(withDuration duration: NSTimeInterval,
                                    delay: NSTimeInterval = 0,
                                    options: UIViewAnimationOptions = [],
                                    completion: ((Bool) -> Void)? = nil,
                                    animations: () -> Void) {
        
        UIView.animateWithDuration(duration,
                                   delay: delay,
                                   options: options,
                                   animations: animations,
                                   completion: completion)
    }
}

#endif
