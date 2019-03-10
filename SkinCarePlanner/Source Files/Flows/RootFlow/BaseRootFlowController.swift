//
//  RootFlowController.swift
//  SkinCarePlanner
//
//  Created by Кирилл Шаханский on 09/03/2019.
//  Copyright © 2019 Kirill Shalhansky. All rights reserved.
//

import UIKit

final class BaseRootFlowController: RootFlowController {

    private var rootViewController: UITabBarController?

    // MARK: - RootFlowController

    func getRootViewController() -> UIViewController {
        if let rootViewController = rootViewController { return rootViewController }
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [
            getCalendarViewController(),
            getCatalogViewController()
        ]
        return tabBarController
    }

    // MARK: - Private methods

    private func getCalendarViewController() -> UIViewController {
        let viewController = UIViewController()
        viewController.view.backgroundColor = .red
        viewController.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 0)
        viewController.tabBarItem.title = "Календарь"
        return viewController
    }

    private func getCatalogViewController() -> UIViewController {
        let viewController = UIViewController()
        viewController.view.backgroundColor = .yellow
        viewController.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 1)
        viewController.tabBarItem.title = "Каталог"
        return viewController
    }

}
