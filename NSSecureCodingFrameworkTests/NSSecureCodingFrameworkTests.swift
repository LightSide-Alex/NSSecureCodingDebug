//
//  NSSecureCodingFrameworkTests.swift
//  NSSecureCodingFrameworkTests
//
//  Created by Oleksandr Balan on 2023-03-10.
//

import XCTest
@testable import NSSecureCodingFramework

class NSSecureCodingFrameworkTests: XCTestCase {
  func test_archiver_fullCycle() throws {
    let sample = MyCustomClass()
    let sut = MyCustomClassArchiver()
    
    let data = try sut.archive([sample])
    let result = try sut.unarchive(encodedData: data)?.first
    
    XCTAssertEqual(sample, result)
  }
}
