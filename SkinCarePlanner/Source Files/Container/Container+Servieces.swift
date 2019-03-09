//
//  Container+Servieces.swift
//  SkinCarePlanner
//
//  Created by Кирилл Шаханский on 09/03/2019.
//  Copyright © 2019 Kirill Shalhansky. All rights reserved.
//

protocol LaunchManagerFactory {
    func launchManager() -> LaunchManager
}

extension BaseContainer: LaunchManagerFactory {

    func launchManager() -> LaunchManager {
        return launchManagerShared
    }

    func getLaunchManager() -> LaunchManager {
        return BaseLaunchManager(container: self)
    }

}
