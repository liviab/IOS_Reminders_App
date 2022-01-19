//
//  HomeScreenElements.swift
//  RemindersAppUITests
//
//  Created by Livia Barreto on 18/01/22.
//

import XCTest

enum HomePage {
    
    enum Identifiers {
        static let newReminderButton = "New Reminder"
        static let addListButton = "Add List"
        static let editButton = "Edit"
        static let todayButton = "Today"
        static let scheduledButton = "Scheduled"
        static let allButton = "All"
        static let myReminderListsButton = "Reminders"
    }
    
    enum Buttons {
        static let newReminderButton = app.buttons[Identifiers.newReminderButton]
        static let addListButton = app.buttons[Identifiers.addListButton]
        static let editButton = app.buttons[Identifiers.editButton]
        static let todayButton = app.buttons[Identifiers.todayButton]
        static let scheduledButton = app.buttons[Identifiers.scheduledButton]
        static let allButton = app.buttons[Identifiers.allButton]
        static let myReminderListsButton = app.buttons[Identifiers.myReminderListsButton]
    }
    
    enum Alerts {
        
    }
}
