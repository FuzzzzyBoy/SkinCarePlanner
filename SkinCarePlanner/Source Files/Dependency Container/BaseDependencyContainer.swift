//
//  BaseDependencyContainer.swift
//  SkinCarePlanner
//
//  Created by Кирилл Шаханский on 09/03/2019.
//  Copyright © 2019 Kirill Shalhansky. All rights reserved.
//

final class BaseDependencyContainer: DependencyContainer {

    // Singletones

    private lazy var launchManagerShared: LaunchManager = { return getLaunchManager() }()
    private lazy var rootFlowControllerShared: RootFlowController = { return getRootFlowController() }()
}

extension BaseDependencyContainer: LaunchManagerFactory {

    func launchManager() -> LaunchManager {
        return launchManagerShared
    }

    private func getLaunchManager() -> LaunchManager {
        return BaseLaunchManager(container: self)
    }

}

extension BaseDependencyContainer: RootFlowControllerFactory {

    func rootFlowController() -> RootFlowController {
        return rootFlowControllerShared
    }

    private func getRootFlowController() -> RootFlowController {
        return BaseRootFlowController()
    }

}
