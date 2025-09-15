#if !swift(>=3.0)
//
//  UIFont.swift
//  SwiftCompatKit
//
//  Created by JWI on 10/09/2025.
//  Copyright © 2025 JWI. All rights reserved.
//

import Foundation
// UIFont+Swift3Backport.swift
// Swift 3 style API available in Swift 2.2

import UIKit

// MARK: - Swift 3 style UIFont methods
extension UIFont {
    
    // System Fonts
    @nonobjc class func systemFont(ofSize fontSize: CGFloat) -> UIFont {
        return UIFont.systemFontOfSize(fontSize)
    }
    
    @nonobjc class func boldSystemFont(ofSize fontSize: CGFloat) -> UIFont {
        return UIFont.boldSystemFontOfSize(fontSize)
    }
    
    @nonobjc class func italicSystemFont(ofSize fontSize: CGFloat) -> UIFont {
        return UIFont.italicSystemFontOfSize(fontSize)
    }
    
    @available(iOS 8.2, *)
    @nonobjc class func systemFont(ofSize fontSize: CGFloat, weight: CGFloat) -> UIFont {
        return UIFont.systemFontOfSize(fontSize, weight: weight)
    }
    
    
    // Preferred Fonts
    @nonobjc class func preferredFont(forTextStyle style: String) -> UIFont {
        return UIFont.preferredFontForTextStyle(style)
    }
    
    // Font Names
    @nonobjc class func fontNames(forFamilyName familyName: String) -> [String] {
        return UIFont.fontNamesForFamilyName(familyName)
    }
}

// MARK: - Swift 3 style UIFontTextStyle struct
struct UIFontTextStyle {
    static let body = UIFontTextStyleBody
    static let headline = UIFontTextStyleHeadline
    static let subheadline = UIFontTextStyleSubheadline
    static let footnote = UIFontTextStyleFootnote
    static let caption1 = UIFontTextStyleCaption1
    static let caption2 = UIFontTextStyleCaption2
    
    @available(iOS 9.0, *)
    static let callout = UIFontTextStyleCallout
    @available(iOS 9.0, *)
    static let title1 = UIFontTextStyleTitle1
    @available(iOS 9.0, *)
    static let title2 = UIFontTextStyleTitle2
    @available(iOS 9.0, *)
    static let title3 = UIFontTextStyleTitle3
}


#endif
