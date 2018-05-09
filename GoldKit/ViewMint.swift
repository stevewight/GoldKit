//
//  ViewMint.swift
//  GoldMine
//
//  Created by Steve on 5/6/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

public enum ViewSize: Int {
    case xxSmall = 12
    case xSmall = 13
    case small = 14
    case medium = 15
    case large = 16
    case xLarge = 17
    case xxLarge = 18
    
    public static func all()->[ViewSize] {
        return [
            .xxSmall, .xSmall, .small,
            .medium, .large, .xLarge,
            .xxLarge
        ]
    }
    
}

public class ViewMint {
    let allSizes:[Double]

    public init(allSizes:[Double]) {
        self.allSizes = allSizes
    }
    
    public func value(size:ViewSize)->Double {
        return allSizes[size.rawValue]
    }
    
}
