//
//  RootFlowControllerTests.swift
//  SkinCarePlannerTests
//
//  Created by Кирилл Шаханский on 09/03/2019.
//  Copyright © 2019 Kirill Shalhansky. All rights reserved.
//

import XCTest
@testable import SkinCarePlanner

class RootFlowControllerTests: XCTestCase {

    var flowController: RootFlowController!

    override func setUp() {
        super.setUp()
        flowController = BaseRootFlowController()
    }

    override func tearDown() {
        flowController = nil
        super.tearDown()
    }

    // MARK: - Tests

    func test_getRootViewController() {
        // given
        // when
        let first = flowController.getRootViewController()
        let second = flowController.getRootViewController()
        // then
        XCTAssertTrue(first === second)
    }

}
