//
//  UnicodeOperatorsTests.swift
//  UnicodeOperators
//

import XCTest
@testable import UnicodeOperators

class UnicodeOperatorsTests: XCTestCase {
	func testLessThan() {
		let a = 10
		let b = 20
		XCTAssertTrue(a ≱ b)
	}
	
	static var allTests = [
		("testLessThan", testLessThan),
		]
}
