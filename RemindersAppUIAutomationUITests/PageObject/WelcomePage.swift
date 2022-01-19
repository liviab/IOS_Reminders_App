//
//  WelcomePage.swift
//  RemindersAppUITests
//
//  Created by Livia Barreto on 19/01/22.
//

import XCTest

enum WelcomePage {
    
    enum Identifiers {
        static let welcomeToRemindersMessage = "Welcome to Reminders"
        static let quickCreationMessage = "Quick Creation"
        static let easyOrganizingMessage = "Easy Organizing"
        static let suggestionsMessage = "Suggestions and Smart Lists"
        static let continueButton = "Continue"
    }
    
    enum Buttons {
        static let continueButton = app.buttons[Identifiers.continueButton]
    }
    
    enum StaticTexts {
        static let welcomeToRemindersMessage = app.staticTexts[Identifiers.welcomeToRemindersMessage]
    }
    
    enum LocationIdenifiers {
        static let allowToUseLocationMessage = "Allow \"Reminders\" to use your location?"
        static let allowOnceButton = "Allow Once"
        static let allowWhileUsingAppButton = "Allow While Using App"
        static let dontAllowButton = "Don\'t Allow"
    }
    
    enum LocationStaticTexts {
        static let allowToUseLocationMessage = app.staticTexts[LocationIdenifiers.allowToUseLocationMessage]
    }
    
    enum LocationButtons {
        static let allowOnceButton = app.buttons[LocationIdenifiers.allowOnceButton]
        static let allowWhileUsingAppButton = app.buttons[LocationIdenifiers.allowWhileUsingAppButton]
        static let dontAllowButton = app.buttons[LocationIdenifiers.dontAllowButton]
    }
    
    enum LocationAlertIdentifiers {
        static let preciseLocationIsOffMessage = "Precise Location is Off"
        static let preciseLocationNotNowButton = "Not Now"
        static let preciseLocationSettingsButton = "Go to Settings"
    }
    
    enum LocationAlertStaticTexts {
        static let preciseLocationIsOffMessage = app.staticTexts[LocationAlertIdentifiers.preciseLocationIsOffMessage]
    }
    
    enum LocationAlertButtons {
        static let preciseLocationNotNowButton = app.buttons[LocationAlertIdentifiers.preciseLocationNotNowButton]
        static let preciseLocationSettingsButton = app.buttons[LocationAlertIdentifiers.preciseLocationSettingsButton]
    }
}
