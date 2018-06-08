//
//  HandMadeContentView.swift
//  PreMaterialComponents
//
//  Created by Masakazu Sano on 2018/06/07.
//  Copyright © 2018年 Masakazu Sano. All rights reserved.
//

import UIKit
import Prelude

class HandMadeContentView: UIView, XibInstantiatable {
    override init(frame: CGRect) {
        super.init(frame: frame)
        instantiate()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        instantiate()
    }
}
