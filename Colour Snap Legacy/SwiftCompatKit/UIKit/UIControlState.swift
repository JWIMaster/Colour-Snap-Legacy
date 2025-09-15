#if !swift(>=3.0)
//
//  UIControlState.swift
//  Colour Snap Legacy
//
//  Created by JWI on 31/08/2025.
//  Copyright © 2025 JWI. All rights reserved.
//

import Foundation
import UIKit

extension UIControlState {
    static var normal: UIControlState { return .Normal }
    static var highlighted: UIControlState { return .Highlighted }
    static var disabled: UIControlState { return .Disabled }
    static var selected: UIControlState { return .Selected }
    static var application: UIControlState { return .Application }
    static var reserved: UIControlState { return .Reserved }
}

extension UIButton {
    // Backport of modern Swift `setTitle(_:for:)`
    func setTitle(_ title: String?, for state: UIControlState) {
        self.setTitle(title, forState: state)
    }
}
#endif
