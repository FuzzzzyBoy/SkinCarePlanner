//
//  Container+FlowControllers.swift
//  SkinCarePlanner
//
//  Created by Кирилл Шаханский on 09/03/2019.
//  Copyright © 2019 Kirill Shalhansky. All rights reserved.
//

protocol RootFlowControllerFactory {
    func rootFlowController() -> RootFlowController
}

extension BaseContainer: RootFlowControllerFactory {

    func rootFlowController() -> RootFlowController {
        return rootFlowControllerShared
    }

    func getRootFlowController() -> RootFlowController {
        return BaseRootFlowController()
    }

}
