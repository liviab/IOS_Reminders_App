//
//  TestBase.swift
//  RemindersAppUITests
//
//  Created by Livia Barreto on 18/01/22.
//

import XCTest

class BaseTestCase: XCTestCase {
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }
}
