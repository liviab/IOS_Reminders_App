//
//  WelcomePageTestCase.swift
//  RemindersAppUIAutomationUITests
//
//  Created by Livia Barreto on 19/01/22.
//

import XCTest

class WelcomePageTestCase: BaseTestCase {
    
    private let welcomePageRobot = WelcomePageRobot()
    
    override func setUp() {
        handleLocationRequestDisplayed()
    }
    
    func testAWelcomePageIsDisplayed() {
        welcomePageRobot.assertWelcomePageMessageDisplayed()
    }
    
    func testBWelcomePageDidContinue() {
        welcomePageRobot.tapContinueButton()
        welcomePageRobot.assertWelcomePageDidContinue()
    }
}

// MARK: - Test helper functions
extension WelcomePageTestCase {
    
    public func handleLocationRequestDisplayed(){
        let title = WelcomePage.StaticTexts.welcomeToRemindersMessage.waitForExistence(timeout: 60)
        
        if !title {
            print("Location was requested. Handling permission...")
            welcomePageRobot.assertLocationRequestDisplayed()
            welcomePageRobot.tapLocationRequestAllowOnce()
            welcomePageRobot.handleLocationAlertDisplayed()
        }
    }
}
