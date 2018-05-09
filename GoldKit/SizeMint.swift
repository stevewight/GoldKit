//
//  SizeFactory.swift
//  c01ns
//
//  Created by Steve on 4/11/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

public class SizeMint {
    let divSize = 9     //smaller then baseSize
    let multiSize = 7   //larger then baseSize
    let ratio = 1.618   //golden
    let baseSize:Double
    var allSizes = [Double]()
    
    public init(baseSize:Double) {
        self.baseSize = baseSize
        allSizes.append(baseSize)
    }
    
    public func make()->[Double] {
        calcAllSizes()
        return allSizes.sorted()
    }
    
    private func calcAllSizes() {
        buildSizes(count: divSize, isMulti: false)
        buildSizes(count: multiSize, isMulti: true)
    }
    
    private func buildSizes(count:Int, isMulti:Bool) {
        var last = baseSize
        (0...count).forEach { _ in
            last = isMulti ? last*ratio : last/ratio
            allSizes.append(last)
        }
    }
    
}
