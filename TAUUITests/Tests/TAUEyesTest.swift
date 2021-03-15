import Foundation
import XCTest
import EyesXCUI

    func testExample() {
        // Initialize the eyes SDK and set your private API key.
        let eyes = Eyes()

        eyes.apiKey = "YOUR_API_KEY"

        // Start the test.
        eyes.open(withApplicationName: "Hello World!", testName: "My first test using EyesXCUI SDK!")

        // Visual checkpoint #1.
        eyes.check(withTag: "Hello", andSettings: Target.window().timeout(inSeconds: 5))

        // Click the "Click me!" button.
        XCUIApplication().buttons["Click me!"].tap()

        // Visual checkpoint #2.
        eyes.checkWindow(withTag: "Click!")

        // End the test.
        do {
            try eyes.close()
        } catch {
            eyes.abortIfNotClosed()
        }
    }


