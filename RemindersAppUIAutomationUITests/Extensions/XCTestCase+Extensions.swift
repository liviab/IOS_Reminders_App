//
//  XCTestCase+Extensions.swift
//  RemindersAppUITests
//
//  Created by Livia Barreto on 18/01/22.
//

import XCTest

extension XCTestCase {
    
    func waitForCells(in collectionView: XCUIElement) {
        let moreThanZero = NSPredicate(format: "count > 0")
        let cells = collectionView.cells
        
        expectation(for: moreThanZero, evaluatedWith: cells, handler: nil)
        waitForExpectations(timeout: 30)
    }
    
    func waitForExistance(of element: XCUIElement) {
        let exists = NSPredicate(format: "exists == TRUE")
        expectation(for: exists, evaluatedWith: element, handler: nil)
        waitForExpectations(timeout: 30)
    }
}
