import XCTest
@testable import Algorithms

final class AlgorithmsTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Algorithms().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
