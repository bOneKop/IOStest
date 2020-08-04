//
//  UITestDemoUITests.swift
//  UITestDemoUITests
//
//  Created by 刘忠雨 on 2020/7/28.
//  Copyright © 2020 xiangzirui. All rights reserved.
//

import XCTest

class UITestDemoUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let safariApp = XCUIApplication.init(bundleIdentifier: "com.apple.mobilesafari")
        
        safariApp.launch()
        safariApp.buttons["URL"].tap()
        if(safariApp.buttons["clean"].exists){
            safariApp.textFields["URL"].buttons["clean"].tap()
        }
        safariApp.textFields["URL"].typeText("http://www.baidu.com")

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
