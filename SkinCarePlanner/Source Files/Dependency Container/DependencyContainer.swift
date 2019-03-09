//
//  DependencyContainer.swift
//  SkinCarePlanner
//
//  Created by Кирилл Шаханский on 09/03/2019.
//  Copyright © 2019 Kirill Shalhansky. All rights reserved.
//

protocol DependencyContainer: LaunchManagerFactory {}

protocol LaunchManagerFactory {
    func launchManager() -> LaunchManager
}
