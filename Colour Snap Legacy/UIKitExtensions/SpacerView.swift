//
//  SpacerView.swift
//  Colour Snap Legacy
//
//  Created by JWI on 3/09/2025.
//  Copyright © 2025 JWI. All rights reserved.
//

import UIKit

class SpacerView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clearColor()
        
        self.setContentHuggingPriority(UILayoutPriorityDefaultLow, forAxis: .Horizontal)
        self.setContentHuggingPriority(UILayoutPriorityDefaultLow, forAxis: .Vertical)
        
        self.setContentCompressionResistancePriority(UILayoutPriorityDefaultLow, forAxis: .Horizontal)
        self.setContentCompressionResistancePriority(UILayoutPriorityDefaultLow, forAxis: .Vertical)
    }
    
    override func intrinsicContentSize() -> CGSize {
       return CGSize(width: 0, height: 0) 
    }
    
    convenience init() {
        self.init(frame: CGRectZero)
    }
    
    class func spacer() -> SpacerView {
        return SpacerView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
