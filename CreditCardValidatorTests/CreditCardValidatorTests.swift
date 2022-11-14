//
//  CreditCardValidatorTests.swift
//  CreditCardValidatorTests
//
//  Created by Shrish Deshpande on 11/14/22.
//

import XCTest
@testable import CreditCardValidator

class CreditCardValidatorTests: XCTestCase {
    private var validNumbers: [String] = []
    private var invalidNumbers: [String] = []

    override func setUpWithError() throws {
        validNumbers.append("5555-5555-5555-4444")
        validNumbers.append("5555555555554444")
        validNumbers.append("4012-8888-8888-1881")
        validNumbers.append("4012888888881881")
        validNumbers.append("4111111111111111")
        validNumbers.append("6011000990139424")
        validNumbers.append("3566002020360505")
        validNumbers.append("352906116405822")
        
        invalidNumbers.append("3566002020360506")
        invalidNumbers.append("4111111111111112")
        invalidNumbers.append("5012-8888-8888-1881")
        invalidNumbers.append("452906116405822")
    }

    override func tearDownWithError() throws {
        invalidNumbers.removeAll()
    }

    func testExample() throws {
        for num in validNumbers {
            XCTAssertTrue(isValidNumber(num))
        }
        for num in invalidNumbers {
            XCTAssertFalse(isValidNumber(num))
        }
    }
}
