//
//  UnitTestingTests.swift
//  UnitTestingTests
//
//  Created by Rodney Cocker on 30/1/17.
//  Copyright © 2017 RMIT. All rights reserved.
//

import XCTest
@testable import UnitTesting

class UnitTestingTests: XCTestCase {
    
    let converter = Converter()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func testConvertToMetres() {
        let centimetre = 162
        let answer = converter.centimetresToMetres(centimetre)
        XCTAssert(answer == 1.62, "converter did not convert centimetres to metres properly")
    }
    
    func testConvertToCentimetres() {
        let metre = 30.19
        let answer = converter.metresToCentimetres(metre)
        XCTAssertTrue(answer == 3019, "converter did not convert metres to centimetres properly")
    }
    
    func testConvertToFeetAndInches() {
        let centimetres = 178
        let answer = converter.centimetresToFeetAndInches(centimetres)
        XCTAssertFalse(answer != "5'10\"", "converter did not convert metres to feet and inches properly")
    }
}
