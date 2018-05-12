//
//  Element.swift
//  GoldKit
//
//  Created by Steve on 5/12/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

public enum Element {
    case view
    case pad
    case font
    case line
    case kern
    
    public static func all()->[Element] {
        return [
            .view, .pad,
            .font, .line, .kern
        ]
    }
    
    public func range()->(Int, Int) {
        switch self {
        case .view:
            return (12,18)
        case .pad:
            return (7,13)
        case .font:
            return (8,14)
        case .line:
            return (3,9)
        case .kern:
            return (0,6)
        }
    }
}
