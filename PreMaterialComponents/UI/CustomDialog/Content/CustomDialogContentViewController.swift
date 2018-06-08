//
//  CustomDialogContentViewController.swift
//  PreMaterialComponents
//
//  Created by Masakazu Sano on 2018/06/06.
//  Copyright © 2018年 Masakazu Sano. All rights reserved.
//

import UIKit
import MaterialComponents
//import RxSwift
//import RxCocoa

class CustomDialogContentViewController: UIViewController {
    @IBOutlet weak var alertView: MDCAlertControllerView!
    @IBOutlet weak var baseViewHeightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // TODO: fix workaround (not good)
//        view.bounds.size = CGSize(width: 300, height: baseViewHeightConstraint.constant)
    }
    
}

extension CustomDialogContentViewController: UIViewControllerTransitioningDelegate {
    
//    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
//
//
//    }
}

//extension CustomDialogContentViewController: UIViewControllerAnimatedTransitioning {
//    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
//        return 0.5
//    }
//
//    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
//
//    }
//}
