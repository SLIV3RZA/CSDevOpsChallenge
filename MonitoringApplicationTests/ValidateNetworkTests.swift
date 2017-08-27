//
//  ValidateNetworkTests.swift
//  MonitoringApplication
//
//  Created by Gregory McIntyre on 2017/08/27.
//  Copyright © 2017 Greg McIntyre. All rights reserved.
//

import XCTest

class ValidateNetworkTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testIsConnectedToNetwork() {
        XCTAssertTrue(ValidateNetwork().isConnectedToNetwork())
    }

}
