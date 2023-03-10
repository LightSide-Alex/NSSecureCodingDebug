//
//  NSSecureCodingClientTests.swift
//  NSSecureCodingClientTests
//
//  Created by Oleksandr Balan on 2023-03-10.
//

import XCTest
import NSSecureCodingFramework

final class NSSecureCodingClientTests: XCTestCase {
  func test_archiver_fullCycle() throws {
    let sample = MyCustomClass(isSecureCoded: true)
    let sut = MyCustomClassArchiver()
    
    let data = try sut.archive([sample])
    let result = try sut.unarchive(encodedData: data)?.first
    
    XCTAssertEqual(sample, result)
  }
}
