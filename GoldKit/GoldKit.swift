//
//  GoldKit.swift
//  GoldMine
//
//  Created by Steve on 5/6/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

class GoldKit {
    var baseSize = 12.0
    var sizes = [Double]()
    
    static let main:GoldKit = {
        return GoldKit()
    }()
    
    public init() {
        calculate()
    }
    
    public func font(_ size:FontSize, name:FontName = .regular)->UIFont {
        let style = FontMint(allSizes: sizes)
        return style.make(size: size, name: name)
    }
    
    public func fontSize(_ size:FontSize)->Double {
        let mint = FontMint(allSizes: sizes)
        return mint.value(size: size)
    }
    
    public func viewSize(_ size:ViewSize)->Double {
        let mint = ViewMint(allSizes: sizes)
        return mint.value(size: size)
    }
    
    public func padSize(_ size:PadSize)->Double {
        let mint = PadMint(allSizes: sizes)
        return mint.value(size: size)
    }
    
    public func lineSize(_ size:LineSize)->Double {
        let mint = LineMint(allSizes: sizes)
        return mint.value(size: size)
    }
    
    public func kernSize(_ size:KernSize)->Double {
        let mint = KernMint(allSizes: sizes)
        return mint.value(size: size)
    }
    
    public func calculate() {
        sizes = SizeMint(
            baseSize: baseSize
        ).make()
    }
    
}
