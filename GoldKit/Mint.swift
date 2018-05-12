//
//  Mint.swift
//  GoldKit
//
//  Created by Steve on 5/12/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

class Mint: NSObject {
    let sizes:[Double]
    
    public init(sizes:[Double]) {
        self.sizes = sizes
    }
    
    public func value(size:Size, element:Element)->Double {
        let subRange = element.range()
        let subArr = sizes[subRange.0...subRange.1]
        return Array(subArr)[size.rawValue]
    }
    
}
