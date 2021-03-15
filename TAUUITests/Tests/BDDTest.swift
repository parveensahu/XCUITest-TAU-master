import Foundation
import XCTest

class BDDTest: TestBase {
    
    func testPositiveScenario() {
        whenIEnter(city: "Gurgaon")
        whenIEnrolled()
        thenIShouldSeeThankYouMessage()
        
    }
    
    func testThankYouMessageInBDStyle() {
        whenIEnter(city: "New Delhi")
        whenIEnrolled()
        thenIShouldSeeThankYouMessage()
    }
    
    func testValidationErrorMessage(){
        whenIEnrolled()
        thenIShouldSeeEnterCityMessage()
    }
    
    func testWelcomeMessage() {
        thenIShouldSeeWelcomeMessage()
    }
    
    
}

