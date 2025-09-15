//
//  UIViewController.swift
//  SwiftCompatKit
//
//  Created by JWI on 16/9/25.
//  Copyright © 2025 JWI. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func present(_ viewController: UIViewController, animated: Bool, completion: (() -> Void)? = nil) {
        self.presentViewController(viewController, animated: animated, completion: completion)
    }
    
    func dismiss(animated: Bool, completion: (() -> Void)? = nil) {
        self.dismissViewControllerAnimated(animated, completion: completion)
    }
}
