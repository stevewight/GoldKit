//
//  FontMint.swift
//  GoldMine
//
//  Created by Steve on 5/6/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

enum FontSize: Int {
    case small = 10
    case medium = 11
    case large = 12
    case xLarge = 13
    
    public static func all()->[FontSize] {
        return [.small, .medium, .large, .xLarge]
    }
}

enum FontName: String {
    case demiBoldCond = "AvenirNextCondensed-DemiBold"
    case regularCond = "AvenirNextCondensed-Regular"
    case demiBold = "AvenirNext-DemiBold"
    case regular = "AvenirNext-Regular"
}

class FontMint {
    let allSizes:[Double]
    
    public init(allSizes:[Double]) {
        self.allSizes = allSizes
    }
    
    public func make(size:FontSize, name:FontName = .regular)->UIFont {
        return UIFont(
            name: name.rawValue,
            size: CGFloat(value(size: size))
        )!
    }
    
    public func value(size:FontSize)->Double {
        return allSizes[size.rawValue]
    }
}
