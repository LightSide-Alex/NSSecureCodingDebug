import XCTest
@testable import MyLibrary

final class MyLibraryTests: XCTestCase {
  func test_archiver_fullCycle() throws {
    let sample = MyCustomClass()
    let sut = MyCustomClassArchiver()
    
    let data = try sut.archive([sample])
    let result = try sut.unarchive(encodedData: data)?.first
    
    XCTAssertEqual(sample, result)    
  }
}
