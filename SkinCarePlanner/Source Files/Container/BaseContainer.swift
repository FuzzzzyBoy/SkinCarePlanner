//
//  BaseDependencyContainer.swift
//  SkinCarePlanner
//
//  Created by Кирилл Шаханский on 09/03/2019.
//  Copyright © 2019 Kirill Shalhansky. All rights reserved.
//

final class BaseContainer: Container {

    // Singletones

    lazy var launchManagerShared: LaunchManager = { return getLaunchManager() }()
    lazy var rootFlowControllerShared: RootFlowController = { return getRootFlowController() }()

}
