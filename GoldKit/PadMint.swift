//
//  PadMint.swift
//  GoldMine
//
//  Created by Steve on 5/6/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

public enum PadSize: Int {
    case xxSmall = 7
    case xSmall = 8
    case small = 9
    case medium = 10
    case large = 11
    case xLarge = 12
    case xxLarge = 13
    
    public static func all()->[PadSize] {
        return [
            .xxSmall, .xSmall, .small, .medium,
            .large, .xLarge, .xxLarge
        ]
    }
    
}

public class PadMint {
    let allSizes:[Double]
    
    public init(allSizes:[Double]) {
        self.allSizes = allSizes
    }
    
    public func value(size:PadSize)->Double {
        return allSizes[size.rawValue]
    }
    
}
