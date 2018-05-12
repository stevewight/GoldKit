//
//  GoldKit.swift
//  GoldMine
//
//  Created by Steve on 5/6/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

public class GoldKit {
    public var baseSize = 12.0
    public var sizes = [Double]()
    
    public static let main:GoldKit = {
        return GoldKit()
    }()
    
    public init() {
        calculate()
    }
    
    public func font(_ size:Size, name:FontName = .regular)->UIFont {
        let value = Mint(sizes: sizes).value(
            size: size,
            element: .font
        )
        return UIFont(
            name:name.rawValue,
            size:CGFloat(value)
        )!
    }
    
    public func size(_ size:Size, element:Element)->Double {
        let mint = Mint(sizes: sizes)
        return mint.value(size:size, element:element)
    }
    
    public func calculate() {
        sizes = SizeMint(
            baseSize: baseSize
        ).make()
    }
    
}
