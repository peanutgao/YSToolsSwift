//
//  AutoLayoutMakeProtocol.swift
//  JDoctor
//
//  Created by Joseph Koh on 2020/9/22.
//  Copyright © 2020 Joseph Koh. All rights reserved.
//

import UIKit
import SnapKit

public protocol AutoLayoutMakeProtocol {

}

extension AutoLayoutMakeProtocol where Self: UIView {
    
    @discardableResult
    public func ys_makeConstraints(_ closure: (_ make: ConstraintMaker) -> Void) -> Self {
        self.snp.makeConstraints(closure)
        return self
    }
}


extension UIView: AutoLayoutMakeProtocol {
    
    
}
