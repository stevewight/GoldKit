//
//  LineMint.swift
//  GoldMine
//
//  Created by Steve on 5/6/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

enum LineSize: Int {
    case xxSmall = 3
    case xSmall = 4
    case small = 5
    case medium = 6
    case large = 7
    case xLarge = 8
    case xxLarge = 9
    
    public static func all()->[LineSize] {
        return [
            .xxSmall, .xSmall, .small,
            .medium, .large, .xLarge,
            .xxLarge
        ]
    }
    
}

class LineMint {
    let allSizes:[Double]
    
    public init(allSizes:[Double]) {
        self.allSizes = allSizes
    }
    
    public func value(size:LineSize)->Double {
        return allSizes[size.rawValue]
    }
    
}
