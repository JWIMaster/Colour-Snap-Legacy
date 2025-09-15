#if !swift(>=3.0)
//
//  UIButton.swift
//  Colour Snap Legacy
//
//  Created by JWI on 31/08/2025.
//  Copyright © 2025 JWI. All rights reserved.
//

import Foundation
import UIKit

//Note: Syntax is slighty different here, partly for convenience and partly because getting the actual syntax replicated is quite painful, and since I prefer this anyways, here you go. You will have to change

private class ClosureSleeve {
    let closure: () -> Void
    init(_ closure: () -> Void) {
        self.closure = closure
    }
    @objc func invoke() { closure() }
}

extension UIButton {
    func addAction(for controlEvents: UIControlEvents, _ closure: () -> Void) {
        let sleeve = ClosureSleeve(closure)
        addTarget(sleeve, action: #selector(ClosureSleeve.invoke), forControlEvents: controlEvents)
        // Use NSUUID for unique key
        objc_setAssociatedObject(self, NSUUID().UUIDString, sleeve, .OBJC_ASSOCIATION_RETAIN)
    }
}





//Swift 3 renames
extension UIButtonType {
    static var custom: UIButtonType { return .Custom }
    static var system: UIButtonType { return .System }
    static var detailDisclosure: UIButtonType { return .DetailDisclosure }
    static var infoLight: UIButtonType { return .InfoLight }
    static var infoDark: UIButtonType { return .InfoDark }
    static var contactAdd: UIButtonType { return .ContactAdd }
}
#endif
