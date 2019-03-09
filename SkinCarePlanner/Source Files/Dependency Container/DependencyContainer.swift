//
//  DependencyContainer.swift
//  SkinCarePlanner
//
//  Created by Кирилл Шаханский on 09/03/2019.
//  Copyright © 2019 Kirill Shalhansky. All rights reserved.
//

protocol DependencyContainer: LaunchManagerFactory, RootFlowControllerFactory {}

protocol LaunchManagerFactory {
    func launchManager() -> LaunchManager
}

protocol RootFlowControllerFactory {
    func rootFlowController() -> RootFlowController
}
