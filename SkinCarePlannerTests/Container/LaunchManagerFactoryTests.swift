//
//  LaunchManagerFactoryTests.swift
//  SkinCarePlannerTests
//
//  Created by Кирилл Шаханский on 09/03/2019.
//  Copyright © 2019 Kirill Shalhansky. All rights reserved.
//

import XCTest
@testable import SkinCarePlanner

class LaunchManagerFactoryTests: XCTestCase {

    var container: LaunchManagerFactory!

    override func setUp() {
        super.setUp()
        container = BaseContainer()
    }

    override func tearDown() {
        container = nil
        super.tearDown()
    }

    func test_launchManager() {
        // given
        // when
        let first = container.launchManager()
        let second = container.launchManager()
        // then
        XCTAssertTrue(first === second)
    }

}
