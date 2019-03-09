//
//  BaseDependencyContainer.swift
//  SkinCarePlanner
//
//  Created by Кирилл Шаханский on 09/03/2019.
//  Copyright © 2019 Kirill Shalhansky. All rights reserved.
//

final class BaseDependencyContainer: DependencyContainer {

    // Singletones

    private lazy var launchManagerShared: LaunchManager = {
        return getLaunchManager()
    }()
}

extension BaseDependencyContainer: LaunchManagerFactory {

    func launchManager() -> LaunchManager {
        return launchManagerShared
    }

    private func getLaunchManager() -> LaunchManager {
        return BaseLaunchManager(container: self)
    }

}
