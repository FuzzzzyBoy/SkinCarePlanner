//
//  BaseLaunchManager.swift
//  SkinCarePlanner
//
//  Created by Кирилл Шаханский on 09/03/2019.
//  Copyright © 2019 Kirill Shalhansky. All rights reserved.
//

import UIKit

final class BaseLaunchManager: LaunchManager {

    private let container: DependencyContainer

    init(container: DependencyContainer) {
        self.container = container
    }

    func generateWindow() -> UIWindow {
        return UIWindow()
    }

}
