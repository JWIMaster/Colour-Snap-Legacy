#if !swift(>=3.0)
//
//  UIColor.swift
//  Colour Snap Legacy
//
//  Created by JWI on 31/08/2025.
//  Copyright © 2025 JWI. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    class var red: UIColor { return UIColor.redColor() }
    class var green: UIColor { return UIColor.greenColor() }
    class var blue: UIColor { return UIColor.blueColor() }
    class var black: UIColor { return UIColor.blackColor() }
    class var white: UIColor { return UIColor.whiteColor() }
    class var gray: UIColor { return UIColor.grayColor() }
    class var yellow: UIColor { return UIColor.yellowColor() }
    class var orange: UIColor { return UIColor.orangeColor() }
    class var purple: UIColor { return UIColor.purpleColor() }
    class var brown: UIColor { return UIColor.brownColor() }
    class var clear: UIColor { return UIColor.clearColor() }
}

extension UIColor {
    convenience init(red: CGFloat, green: CGFloat, blue: CGFloat) {
        self.init(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    func withAlphaComponent(alpha: CGFloat) -> UIColor {
        return self.colorWithAlphaComponent(alpha)
    }
}
#endif
