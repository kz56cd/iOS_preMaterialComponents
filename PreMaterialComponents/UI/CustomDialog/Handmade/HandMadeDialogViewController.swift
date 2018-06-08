//
//  HandMadeDialogViewController.swift
//  PreMaterialComponents
//
//  Created by Masakazu Sano on 2018/06/07.
//  Copyright © 2018年 Masakazu Sano. All rights reserved.
//

import UIKit

final class HandMadeDialogViewController: UIViewController {

    var isDismissWhenScreenTapped = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareView()
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        for touch: UITouch in touches {
            let tag = touch.view!.tag
            if isDismissWhenScreenTapped,
                tag == 1 {
                dismiss(animated: true, completion: nil)
            }
        }
    }
}

extension HandMadeDialogViewController {
    fileprivate func prepareView() {
        // stub
    }
}

