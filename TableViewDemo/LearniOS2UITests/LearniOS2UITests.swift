//
//  LearniOS2UITests.swift
//  LearniOS2UITests
//
//  Created by Rohit Kumar on 11/10/22.
//

import XCTest
@testable import LearniOS2

class LearniOS2UITests: XCTestCase {
    
    var calculator: Calculator!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        calculator = Calculator()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAdd() {
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let firstNumber = 3
        let secondNumber = 5
        XCTAssertEqual(calculator.add(a: firstNumber, b: secondNumber), 8)
        
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
