//
//  RootFlowControllerFactoryTests.swift
//  SkinCarePlannerTests
//
//  Created by Кирилл Шаханский on 09/03/2019.
//  Copyright © 2019 Kirill Shalhansky. All rights reserved.
//

import XCTest
@testable import SkinCarePlanner

class RootFlowControllerFactoryTests: XCTestCase {

    var container: RootFlowControllerFactory!

    override func setUp() {
        super.setUp()
        container = BaseContainer()
    }

    override func tearDown() {
        container = nil
        super.tearDown()
    }

    func test_rootFlowController() {
        // given
        // when
        let first = container.rootFlowController()
        let second = container.rootFlowController()
        // then
        XCTAssertTrue(first === second)
    }

}
