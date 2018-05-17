//
//  ContentViewController.swift
//  PreMaterialComponents
//
//  Created by Masakazu Sano on 2018/05/17.
//  Copyright © 2018年 Masakazu Sano. All rights reserved.
//

import UIKit
import MaterialComponents

protocol ContentViewControllerProtocol {
    func setupHeaderView()
}

final class ContentViewController: UIViewController, ContentViewControllerProtocol {
    var headerViewController: MDCFlexibleHeaderViewController?
//    var headerContentView: HeaderView =  HeaderView.instantiateFromNib()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ContentViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        headerViewController?.scrollViewDidScroll(scrollView)
    }
    
    func setupHeaderView() {
        let headerView = headerViewController!.headerView
        // ヘッダー部分のサイズセット
        headerView.trackingScrollView = self.tableView
        headerView.maximumHeight = 300
        headerView.minimumHeight = 72
        headerView.minMaxHeightIncludesSafeArea = false
        headerView.backgroundColor = UIColor.darkGray
        headerView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // ヘッダー部分のコンテンツセット
//        headerContentView.frame = (headerView.bounds)
//        headerContentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        headerView.addSubview(headerContentView)
    }
}

extension ContentViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
