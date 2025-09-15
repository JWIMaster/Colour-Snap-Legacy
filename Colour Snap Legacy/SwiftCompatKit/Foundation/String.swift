//
//  String.swift
//  SwiftCompatKit
//
//  Created by JWI on 16/9/25.
//  Copyright © 2025 JWI. All rights reserved.
//

import Foundation

extension String {
    
    var count: Int { return self.characters.count }
    
    subscript(range: Range<Int>) -> String {
        let start = self.startIndex.advancedBy(range.startIndex)
        let end = self.startIndex.advancedBy(range.endIndex)
        return self.substringWithRange(start..<end)
    }
}
