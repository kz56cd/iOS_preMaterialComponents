//
//  CustomPresentationController.swift
//  PreMaterialComponents
//
//  Created by Masakazu Sano on 2018/06/07.
//  Copyright © 2018年 Masakazu Sano. All rights reserved.
//

import UIKit
import MaterialComponents

class CustomPresentationController: MDCDialogPresentationController {
    override init(presentedViewController: UIViewController, presenting presentingViewController: UIViewController?) {
        super.init(presentedViewController: presentedViewController, presenting: presentingViewController)
    }
    
    override var frameOfPresentedViewInContainerView: CGRect {
        print("fuga")
        return CGRect.init(x: 10, y: 10, width: 200, height: 200)
    }
}
