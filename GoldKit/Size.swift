//
//  Size.swift
//  GoldKit
//
//  Created by Steve on 5/12/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

public enum Size: Int {
    case xxSmall = 0
    case xSmall = 1
    case small = 2
    case medium = 3
    case large = 4
    case xLarge = 5
    case xxLarge = 6
    
    public static func all()->[Size] {
        return [
            .xxSmall, .xSmall, .small,
            .medium, .large, .xLarge, .xxLarge
        ]
    }
}
