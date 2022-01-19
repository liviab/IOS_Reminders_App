//
//  RemindersPage.swift
//  RemindersAppUIAutomationUITests
//
//  Created by Livia Barreto on 19/01/22.
//

import XCTest

enum MyRemindersPage {
    
    enum Identifiers {
        static let remindersMessage = "Reminders"
        static let newReminderButton = "New Reminder"
    }
    
    enum Navigation {
        static let backButton = "Back"
        static let doneButton = "Done"
        static let continueButton = "Continue"
    }
    
    enum Buttons {
        static let backButton = app.buttons[Navigation.backButton]
        static let doneButton = app.buttons[Navigation.doneButton]
        static let continueButton = app.buttons[Navigation.continueButton]
        static let newReminderbutton = app.buttons[Identifiers.newReminderButton]
    }
    
}
