//
//  Dictionary+Ext.swift
//  JDoctor
//
//  Created by Joseph Koh on 2020/9/25.
//  Copyright © 2020 Joseph Koh. All rights reserved.
//

import UIKit

extension Dictionary {
    
    public static func += <K, V> (left: inout [K:V], right: [K:V]) {
        for (k, v) in right {
            left[k] = v
        }
    }
    
}

