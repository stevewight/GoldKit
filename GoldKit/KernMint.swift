//
//  KernMint.swift
//  GoldMine
//
//  Created by Steve on 5/6/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

enum KernSize: Int {
    case xSmall = 0
    case small = 1
    case medium = 2
    case large = 3
    case xLarge = 4
    
    public static func all()->[KernSize] {
        return [
            .xSmall, .small, .medium,
            .large, .xLarge
        ]
    }
    
}

class KernMint {
    let allSizes:[Double]

    public init(allSizes:[Double]) {
        self.allSizes = allSizes
    }
    
    public func value(size:KernSize)->Double {
        return allSizes[size.rawValue]
    }
    
}
