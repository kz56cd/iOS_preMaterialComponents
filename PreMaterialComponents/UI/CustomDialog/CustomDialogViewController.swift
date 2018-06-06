//
//  CustomDialogViewController.swift
//  PreMaterialComponents
//
//  Created by Masakazu Sano on 2018/06/06.
//  Copyright © 2018年 Masakazu Sano. All rights reserved.
//

import UIKit
import MaterialComponents
import RxSwift
import RxCocoa

final class CustomDialogViewController: UIViewController {
    
    @IBOutlet weak var normalDialogButton: MDCButton!
    @IBOutlet weak var customDialogButton: MDCButton!
    var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        observeButtonEvent()
    }
}

extension CustomDialogViewController {
    fileprivate func observeButtonEvent() {
        func makeNormalDialog() -> MDCAlertController {
            let alertController = MDCAlertController(
                title: "title",
                message: "This is MDCAlertController"
            )
            let action = MDCAlertAction(
                title: "ok",
                handler: nil
            )
            alertController.addAction(action)
            return alertController
        }
        
        normalDialogButton.rx.tap
            .asDriver()
            .drive(onNext: { [weak self] in
                guard let _self = self else { return }
                _self.present(
                    makeNormalDialog(),
                    animated: true,
                    completion: nil
                )
            }).disposed(by: disposeBag)
    }
}


