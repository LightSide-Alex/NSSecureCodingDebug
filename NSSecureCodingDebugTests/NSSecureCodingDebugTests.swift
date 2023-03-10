//
//  NSSecureCodingDebugTests.swift
//  NSSecureCodingDebugTests
//
//  Created by Oleksandr Balan on 2023-03-10.
//

import XCTest
@testable import NSSecureCodingDebug

class NSSecureCodingDebugTests: XCTestCase {
  func test_archiver_fullCycle() throws {
    let sample = MyCustomClass(isSecureCoded: true)
    let sut = MyCustomClassArchiver()
    
    let data = try sut.archive(sample)
    let result = try sut.unarchive(encodedData: data)
    
    XCTAssertEqual(sample, result)
  }
}
