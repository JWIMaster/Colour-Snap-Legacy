#if !swift(>=3.0)
//
//  NSLayoutAttributes.swift
//  Colour Snap Legacy
//
//  Created by JWI on 31/08/2025.
//  Copyright © 2025 JWI. All rights reserved.
//

import UIKit

extension NSLayoutAttribute {
    static let centerX = NSLayoutAttribute.CenterX
    static let centerY = NSLayoutAttribute.CenterY
    static let left = NSLayoutAttribute.Left
    static let right = NSLayoutAttribute.Right
    static let top = NSLayoutAttribute.Top
    static let bottom = NSLayoutAttribute.Bottom
    static let width = NSLayoutAttribute.Width
    static let height = NSLayoutAttribute.Height
    static let leading = NSLayoutAttribute.Leading
    static let trailing = NSLayoutAttribute.Trailing
    @available(iOS 8.0, *)
    static let centerYWithinMargins = NSLayoutAttribute.CenterYWithinMargins
    @available(iOS 8.0, *)
    static let centerXWithinMargins = NSLayoutAttribute.CenterXWithinMargins
    static let lastBaseline = NSLayoutAttribute.LastBaseline
    @available(iOS 8.0, *)
    static let firstBaseline = NSLayoutAttribute.FirstBaseline
    static let notAnAttribute = NSLayoutAttribute.NotAnAttribute
}

extension NSLayoutRelation {
    static let equal = NSLayoutRelation.Equal
    static let lessThanOrEqual = NSLayoutRelation.LessThanOrEqual
    static let greaterThanOrEqual = NSLayoutRelation.GreaterThanOrEqual
}


#endif
