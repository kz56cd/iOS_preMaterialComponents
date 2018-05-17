//
//  FlexibleHeaderViewController.swift
//  PreMaterialComponents
//
//  Created by Masakazu Sano on 2018/05/17.
//  Copyright © 2018年 Masakazu Sano. All rights reserved.
//

import UIKit
import MaterialComponents

final class FlexibleHeaderViewController: MDCFlexibleHeaderContainerViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareContentVC()
    }
}

extension FlexibleHeaderViewController {
    fileprivate func prepareContentVC() {
        let contentVC = StoryboardScene.ContentViewController.initialScene.instantiate()
        contentViewController = contentVC
        contentVC.headerViewController = headerViewController
        contentVC.setupHeaderView()
    }
}
