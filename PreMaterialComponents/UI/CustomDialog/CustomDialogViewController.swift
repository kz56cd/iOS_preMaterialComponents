//
//  CustomDialogViewController.swift
//  PreMaterialComponents
//
//  Created by Masakazu Sano on 2018/06/06.
//  Copyright © 2018年 Masakazu Sano. All rights reserved.
//

import UIKit

class CustomDialogViewController: UIViewController {
    
    @IBOutlet weak var normalDialogButton: MDCButton!
    @IBOutlet weak var customDialogButton: MDCButton!
    var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        observeButtonEvent()
    }
}


