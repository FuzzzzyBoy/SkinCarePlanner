//
//  RootFlowController.swift
//  SkinCarePlanner
//
//  Created by Кирилл Шаханский on 09/03/2019.
//  Copyright © 2019 Kirill Shalhansky. All rights reserved.
//

import UIKit

final class BaseRootFlowController {

    private var rootViewController: UIViewController?

    func getRootViewController() -> UIViewController {
        if let rootViewController = rootViewController { return rootViewController }
        let viewController = UIViewController()
        viewController.view.backgroundColor = .red
        rootViewController = viewController
        return viewController
    }

}
