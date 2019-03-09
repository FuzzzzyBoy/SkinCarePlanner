//
//  LaunchManagerTests.swift
//  SkinCarePlannerTests
//
//  Created by Кирилл Шаханский on 09/03/2019.
//  Copyright © 2019 Kirill Shalhansky. All rights reserved.
//

import XCTest
@testable import SkinCarePlanner

class LaunchManagerTests: XCTestCase {

    var manager: LaunchManager!
    var container: LaunchManager.DependencyContainer!

    override func setUp() {
        super.setUp()
        container = DependencyContainerMock()
        manager = BaseLaunchManager(container: container)
    }

    override func tearDown() {
        manager = nil
        container = nil
        super.tearDown()
    }

    // MARK: - Tests

    func test_generateWindow() {
        // given
        // when
        let window = manager.generateWindow()
        // then
        XCTAssertNotNil(window.rootViewController)
    }

}

// MARK: - Mocks

private extension LaunchManagerTests {

    final class DependencyContainerMock: LaunchManager.DependencyContainer {

        func rootFlowController() -> RootFlowController {
            return RootFlowControllerMock()
        }

    }

    final class RootFlowControllerMock: RootFlowController {
        func getRootViewController() -> UIViewController {
            return UIViewController()
        }
    }
}
