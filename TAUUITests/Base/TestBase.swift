import Foundation
import XCTest

class TestBase: XCTestCase {
    
    var app = XCUIApplication()
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        super.setUp()
        continueAfterFailure = false
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    func XCTAyncAssert(_ element: XCUIElement) {
        let isElementExist = element.waitForExistence(timeout:10)
        
        if isElementExist {
            XCTAssertTrue(element.exists)
        }
    }
}
