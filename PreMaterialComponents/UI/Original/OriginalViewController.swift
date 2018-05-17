//
//  OriginalViewController.swift
//  PreMaterialComponents
//
//  Created by Masakazu Sano on 2018/05/17.
//  Copyright © 2018年 Masakazu Sano. All rights reserved.
//

import UIKit
import MaterialComponents

class OriginalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        sleep(1)
        showMDCAlert()
    }
    
    private func showMDCAlert() {
        let alertController = MDCAlertController(title: "Material Dialog", message: "This is Material Dialog! Let's Start Now!")
        alertController.addAction(MDCAlertAction(title:"OK"))
        present(alertController, animated: true, completion: nil)
    }
}
