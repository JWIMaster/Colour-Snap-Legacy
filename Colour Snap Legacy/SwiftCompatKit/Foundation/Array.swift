#if !swift(>=3.0)
//
//  Array.swift
//  Colour Snap Legacy
//
//  Created by JWI on 31/08/2025.
//  Copyright © 2025 JWI. All rights reserved.
//

import Foundation
import UIKit

extension Array {
    func randomElement() -> Element? {
        if self.isEmpty { return nil }
        let index = Int(arc4random_uniform(UInt32(self.count)))
        return self[index]
    }
}
#endif
