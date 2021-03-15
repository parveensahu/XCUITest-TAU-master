//
//  Steps.swift
//  TAUUITests
//
//  Created by Parveen Sahu on 03/03/21.
//  Copyright © 2021 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

extension TestBase{
    
    func givenAppIsReady(){
        XCTContext.runActivity(named: "Given App is ready"){ _ in
            XCTAssertTrue(Screen.enrollButton.element.exists)
    }
    }
    
    func whenIEnter(city: String){
        XCTContext.runActivity(named: "When I enter city \(city) ") { _ in
        Screen.cityTextField.element.tap()
        Screen.cityTextField.element.typeText(city)
    }
    }
    
    func whenIEnrolled(){
        XCTContext.runActivity(named: "When I enrolled") { _ in
        Screen.enrollButton.element.tap()
    }
    }
    
    func thenIShouldSeeThankYouMessage(){
        XCTContext.runActivity(named: "Then I should see the Thank You message") { _ in
        XCTAssertTrue(Screen.thankYouMessage.element.exists)
    }
    }
    
    func thenIShouldSeeEnterCityMessage(){
        XCTContext.runActivity(named: "Please Enter City") { _ in
        XCTAssertTrue(Screen.errorMessage.element.exists)
    }
    }
    
    func thenIShouldSeeWelcomeMessage(){
        XCTContext.runActivity(named: "welcomeMessage") { _ in
        XCTAyncAssert(Screen.welcomeMessage.element)
        //XCTAssertTrue(Screen.welcomeMessage.element.exists)
    }
    }
}


