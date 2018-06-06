//
//  ButtonEventRxViewController.swift
//  PreMaterialComponents
//
//  Created by Masakazu Sano on 2018/05/21.
//  Copyright © 2018年 Masakazu Sano. All rights reserved.
//

import UIKit
import MaterialComponents
import RxSwift
import RxCocoa

class ButtonEventRxViewController: UIViewController {

    @IBOutlet weak var button: MDCButton!
    var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        observeButtonEvent()
    }
}

extension ButtonEventRxViewController {
    fileprivate func observeButtonEvent() {
        button.rx.tap
            .asDriver()
            .drive(onNext: {
            print("😡😡😡😡 押された")
        })
        .disposed(by: disposeBag)
    }
}
