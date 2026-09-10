//
//  Dev_UIKitTests.swift
//  Dev_UIKitTests
//
//  Created by APPLE on 10/09/26.
//

import XCTest
@testable import Dev_UIKit

final class Dev_UIKitTests: XCTestCase {
    let vc = ViewController()
    func testExample() {
        let result = 2 + 4
        XCTAssertEqual(result,6)
    }
    
    func testEquality() {
        let hieghtVal = 7
        XCTAssertTrue(hieghtVal > 5)
    }
    
    func textCheckFunctionality() {
        let result = vc.addData(2,7)
        XCTAssertEqual(result, 9)

    }
}
