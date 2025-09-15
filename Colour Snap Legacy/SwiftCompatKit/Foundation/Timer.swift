#if !swift(>=3.0)
//
//  Extensions.swift
//  Learning UIKit
//
//  Created by JWI on 28/08/2025.
//  Copyright (c) 2025 JWI. All rights reserved.
//

import Foundation
import UIKit


//Swift 3 Timer
class ClosureTimer: NSObject {
    let block: (NSTimer) -> Void
    
    init(block: (NSTimer) -> Void) {
        self.block = block
    }
    
    @objc func fire(timer: NSTimer) {
        block(timer)
    }
}

extension NSTimer {
    
    // Swift 3-style API
    @nonobjc class func scheduledTimer(withTimeInterval interval: NSTimeInterval, repeats: Bool, block: (NSTimer) -> Void) -> NSTimer {
        let closureTimer = ClosureTimer(block: block)
        return NSTimer.scheduledTimerWithTimeInterval(interval,
                                                      target: closureTimer,
                                                      selector: #selector(ClosureTimer.fire(_:)),
                                                      userInfo: nil,
                                                      repeats: repeats)
    }
}



typealias Timer = NSTimer





#endif
