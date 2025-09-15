#if !swift(>=3.0)
//
//  CGFloat.swift
//  Colour Snap Legacy
//
//  Created by JWI on 31/08/2025.
//  Copyright © 2025 JWI. All rights reserved.
//

import Foundation
import UIKit

// Helper structs to fake Swift 4+ ranges
struct RandomClosed {
    let min: CGFloat
    let max: CGFloat
}

struct RandomHalfOpen {
    let min: CGFloat
    let max: CGFloat
}

// Overload the ... and ..< operators to return our structs
func ... (lhs: CGFloat, rhs: CGFloat) -> RandomClosed {
    return RandomClosed(min: lhs, max: rhs)
}

func ..< (lhs: CGFloat, rhs: CGFloat) -> RandomHalfOpen {
    return RandomHalfOpen(min: lhs, max: rhs)
}

// CGFloat extension
extension CGFloat {
    static func random(in range: RandomClosed) -> CGFloat {
        let diff = range.max - range.min
        return CGFloat(arc4random()) / CGFloat(UInt32.max) * diff + range.min
    }
    
    static func random(in range: RandomHalfOpen) -> CGFloat {
        let diff = range.max - range.min
        return CGFloat(arc4random()) / CGFloat(UInt32.max) * diff + range.min
    }
}


#endif
