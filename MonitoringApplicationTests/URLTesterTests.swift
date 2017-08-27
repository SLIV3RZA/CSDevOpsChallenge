//
//  URLTesterTests.swift
//  MonitoringApplication
//
//  Created by Gregory McIntyre on 2017/08/27.
//  Copyright © 2017 Greg McIntyre. All rights reserved.
//

import XCTest

class URLTesterTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testInvalidCheckURL() {
        let url = "cdas"
        let expectedOutput = ", Component Status: RED, cdas, "
        let output = URLTester().checkURL(urlPath: url)
        
        XCTAssertTrue(output.range(of: expectedOutput) != nil)
    }
    
    func testValidCheckURL() {
        let url = "http://www.google.com"
        let expectedOutput = ", Component Status: GREEN, http://www.google.com, "
        let output = URLTester().checkURL(urlPath: url)
        
        XCTAssertTrue(output.range(of: expectedOutput) != nil)
    }

}
