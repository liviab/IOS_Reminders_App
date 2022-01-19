//
//  WelcomeRobot.swift
//  RemindersAppUIAutomationUITests
//
//  Created by Livia Barreto on 19/01/22.
//

import XCTest

// MARK: - Actions
struct WelcomePageRobot {
    
    @discardableResult
    func tapContinueButton() -> Self {
        let button = WelcomePage.Buttons.continueButton
        XCTAssert(button.exists, "Continue button doesn\"t exist")
        button.tap()
        return self
    }
    
    @discardableResult
    func tapLocationRequestAllowOnce() -> Self {
        let button = WelcomePage.LocationButtons.allowOnceButton
        XCTAssertTrue(button.exists, "\"Allow Once\" button wasn\"t displayed")
        button.tap()
        return self
    }
    
    @discardableResult
    func tapLocationRequestAllowWhileUsing() -> Self {
        let button = WelcomePage.LocationButtons.allowWhileUsingAppButton
        XCTAssertTrue(button.exists, "\"Allow While Using\" button wasn\"t displayed")
        button.tap()
        return self
    }
    
    @discardableResult
    func tapLocationRequestDontAllow() -> Self {
        let button = WelcomePage.LocationButtons.dontAllowButton
        XCTAssertTrue(button.exists, "\"Don\"t Allow\" button wasn\"t displayed")
        button.tap()
        return self
    }
    
    @discardableResult
    func tapLocationAlertNotNow() -> Self {
        let button = WelcomePage.LocationAlertButtons.preciseLocationNotNowButton
        XCTAssertTrue(button.exists, "\"Not Now\" button wasn\"t displayed")
        button.tap()
        return self
    }
    
    @discardableResult
    func tapLocationAlertGoToSettings() -> Self {
        let button = WelcomePage.LocationAlertButtons.preciseLocationSettingsButton
        XCTAssertTrue(button.exists, "\"Go To Settings\" button wasn\"t displayed")
        button.tap()
        return self
    }
}

// MARK: - Asserts
extension WelcomePageRobot {
    
    @discardableResult
    func assertWelcomePageMessageDisplayed() -> Self {
        let title = WelcomePage.StaticTexts.welcomeToRemindersMessage.waitForExistence(timeout: 5)
        XCTAssertTrue(title, "Welcome page didn\"t display the expected title: " + WelcomePage.Identifiers.welcomeToRemindersMessage)
        return self
    }
    
    @discardableResult
    func assertWelcomePageDidContinue() -> Self {
        let title = WelcomePage.StaticTexts.welcomeToRemindersMessage.waitForExistence(timeout: 5)
        XCTAssertFalse(title, "Welcome page didn\"t finish to continue to the next screen")
        return self
    }
    
    @discardableResult
    func assertLocationRequestDisplayed() -> Self {
        let title = WelcomePage.LocationStaticTexts.allowToUseLocationMessage.waitForExistence(timeout: 5)
        XCTAssertTrue(title, "Location request wasn\"t requested")
        return self
    }
    
}

// MARK: - Helper functions
extension WelcomePageRobot {

    @discardableResult
    func handleLocationAlertDisplayed() -> Self {
        let title = WelcomePage.LocationAlertStaticTexts.preciseLocationIsOffMessage
            .waitForExistence(timeout: 5)
        if title {
            tapLocationAlertNotNow()
        }
        return self
    }
}
