//
//  TopViewController.swift
//  PreMaterialComponents
//
//  Created by Masakazu Sano on 2018/05/17.
//  Copyright © 2018年 Masakazu Sano. All rights reserved.
//

import UIKit

enum SandboxType {
    case original
    case flexibleHeader
    case buttonEventRx
    
    var viewController: UIViewController {
        switch self {
        case .original:
            return StoryboardScene.OriginalViewController.initialScene.instantiate()
        case .flexibleHeader:
            return StoryboardScene.FlexibleHeaderViewController.initialScene.instantiate()
        case .buttonEventRx:
            return StoryboardScene.ButtonEventRxViewController.initialScene.instantiate()
        }
    }
    
    var text: String {
        return String(reflecting: self)
            .replacingOccurrences(
                of: String(reflecting: SandboxType.self) + ".",
                with: ""
            )
    }
}

final class TopViewController: UIViewController {
    let list: [SandboxType] = [
        .original,
        .flexibleHeader,
        .buttonEventRx
    ]
}

extension TopViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = list[indexPath.row].text
        return cell
    }
}

extension TopViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = list[indexPath.row].viewController
        present(viewController, animated: true, completion: nil)
    }
}
