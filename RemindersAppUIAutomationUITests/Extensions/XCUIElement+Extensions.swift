//
//  XCUIElement+Extensions.swift
//  RemindersAppUITests
//
//  Created by Livia Barreto on 18/01/22.
//

import XCTest

extension XCUIElement {
    
    func swipeUp(to element: XCUIElement) {
        while !element.exists {
            swipeUp()
        }
    }
    
    func swipeDown(to element: XCUIElement) {
        while !element.exists {
            swipeDown()
        }
    }
}
