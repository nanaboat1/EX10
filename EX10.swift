//
//  EX10.swift
//  Corona TrackerUITests
//
//  Created by Nana Boateng Amoah on 12/19/20.
//  Copyright © 2020 Samabox. All rights reserved.
//

import XCTest

class EX10: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testzoomIn() throws {
        
        
        let map = XCUIApplication().children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 1).children(matching: .other).element.children(matching: .other).element.children(matching: .map).element
        map.tap()
        map.tap()
        
        
    }
    
    func testRotate() {
        
        XCUIDevice.shared.orientation = .landscapeRight
        
        let app = XCUIApplication()
        app.buttons["Layers"].tap()
        XCTAssert(app.tables/*@START_MENU_TOKEN@*/.staticTexts["Confirmed"]/*[[".cells.staticTexts[\"Confirmed\"]",".staticTexts[\"Confirmed\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
        
    }
    
    func testlandscapebutton() {
        
        XCUIDevice.shared.orientation = .landscapeRight
        
        let app = XCUIApplication()
        app.launch()
        app/*@START_MENU_TOKEN@*/.maps.containing(.other, identifier:"Calgary").element/*[[".maps.containing(.other, identifier:\"Caracas\").element",".maps.containing(.other, identifier:\"Guatemala\").element",".maps.containing(.other, identifier:\"North Atlantic Ocean\").element",".maps.containing(.other, identifier:\"Washington\").element",".maps.containing(.other, identifier:\"New York\").element",".maps.containing(.other, identifier:\"Chicago\").element",".maps.containing(.other, identifier:\"Toronto\").element",".maps.containing(.other, identifier:\"Halifax\").element",".maps.containing(.other, identifier:\"Montréal\").element",".maps.containing(.other, identifier:\"Vancouver\").element",".maps.containing(.other, identifier:\"Winnipeg\").element",".maps.containing(.other, identifier:\"Regina\").element",".maps.containing(.other, identifier:\"Calgary\").element"],[[[-1,12],[-1,11],[-1,10],[-1,9],[-1,8],[-1,7],[-1,6],[-1,5],[-1,4],[-1,3],[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.maps.containing(.other, identifier:"Canada").element/*[[".maps.containing(.other, identifier:\"North Atlantic Ocean\").element",".maps.containing(.other, identifier:\"Washington\").element",".maps.containing(.other, identifier:\"New York\").element",".maps.containing(.other, identifier:\"Chicago\").element",".maps.containing(.other, identifier:\"Toronto\").element",".maps.containing(.other, identifier:\"Halifax\").element",".maps.containing(.other, identifier:\"Montréal\").element",".maps.containing(.other, identifier:\"Vancouver\").element",".maps.containing(.other, identifier:\"Winnipeg\").element",".maps.containing(.other, identifier:\"Regina\").element",".maps.containing(.other, identifier:\"Calgary\").element",".maps.containing(.other, identifier:\"Canada\").element"],[[[-1,11],[-1,10],[-1,9],[-1,8],[-1,7],[-1,6],[-1,5],[-1,4],[-1,3],[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.otherElements["Bahamas"].tap()
        app/*@START_MENU_TOKEN@*/.maps.containing(.other, identifier:"Canada").element/*[[".maps.containing(.other, identifier:\"Guatemala\").element",".maps.containing(.other, identifier:\"North Atlantic Ocean\").element",".maps.containing(.other, identifier:\"Washington\").element",".maps.containing(.other, identifier:\"New York\").element",".maps.containing(.other, identifier:\"Chicago\").element",".maps.containing(.other, identifier:\"Toronto\").element",".maps.containing(.other, identifier:\"Halifax\").element",".maps.containing(.other, identifier:\"Montréal\").element",".maps.containing(.other, identifier:\"Vancouver\").element",".maps.containing(.other, identifier:\"Winnipeg\").element",".maps.containing(.other, identifier:\"Regina\").element",".maps.containing(.other, identifier:\"Calgary\").element",".maps.containing(.other, identifier:\"Canada\").element"],[[[-1,12],[-1,11],[-1,10],[-1,9],[-1,8],[-1,7],[-1,6],[-1,5],[-1,4],[-1,3],[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()

    }
    
    func testrotateandzoom() throws {
        
        XCUIDevice.shared.orientation = .landscapeRight
        
        let calgaryMap = XCUIApplication()/*@START_MENU_TOKEN@*/.maps.containing(.other, identifier:"Calgary").element/*[[".maps.containing(.other, identifier:\"Caracas\").element",".maps.containing(.other, identifier:\"Guatemala\").element",".maps.containing(.other, identifier:\"North Atlantic Ocean\").element",".maps.containing(.other, identifier:\"Washington\").element",".maps.containing(.other, identifier:\"New York\").element",".maps.containing(.other, identifier:\"Chicago\").element",".maps.containing(.other, identifier:\"Toronto\").element",".maps.containing(.other, identifier:\"Halifax\").element",".maps.containing(.other, identifier:\"Montréal\").element",".maps.containing(.other, identifier:\"Vancouver\").element",".maps.containing(.other, identifier:\"Winnipeg\").element",".maps.containing(.other, identifier:\"Regina\").element",".maps.containing(.other, identifier:\"Calgary\").element"],[[[-1,12],[-1,11],[-1,10],[-1,9],[-1,8],[-1,7],[-1,6],[-1,5],[-1,4],[-1,3],[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        calgaryMap.tap()
        calgaryMap.tap()

    }
    
    func testsharebuttonone() {
        
        let app = XCUIApplication()
        app.launch()
        app.windows.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 2).children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element(boundBy: 1).buttons["More"].tap()
        
        let app2 = app
        app2.tables/*@START_MENU_TOKEN@*/.staticTexts["Share"]/*[[".cells.staticTexts[\"Share\"]",".staticTexts[\"Share\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.tables/*@START_MENU_TOKEN@*/.cells.containing(.staticText, identifier:"76,291,671")/*[[".cells.containing(.staticText, identifier:\"CONFIRMED\")",".cells.containing(.staticText, identifier:\"↑0.6%\")",".cells.containing(.staticText, identifier:\"2.2%\")",".cells.containing(.staticText, identifier:\"DEATHS\")",".cells.containing(.staticText, identifier:\"↑0.9%\")",".cells.containing(.staticText, identifier:\"56.4%\")",".cells.containing(.staticText, identifier:\"RECOVERED\")",".cells.containing(.staticText, identifier:\"↑0.8%\")",".cells.containing(.staticText, identifier:\"76,291,671\")"],[[[-1,8],[-1,7],[-1,6],[-1,5],[-1,4],[-1,3],[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.buttons["Share Circle"].tap()
        app2/*@START_MENU_TOKEN@*/.navigationBars["UIActivityContentView"]/*[[".otherElements[\"ActivityListView\"].navigationBars[\"UIActivityContentView\"]",".navigationBars[\"UIActivityContentView\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.buttons["Close"].tap()
        
    }
    
    func testsecondsharebutton() {
        
        let app = XCUIApplication()
        app.launch()
        app.buttons["More"].tap()
        
        let app2 = app
        app2.tables/*@START_MENU_TOKEN@*/.staticTexts["Share"]/*[[".cells.staticTexts[\"Share\"]",".staticTexts[\"Share\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.tables.children(matching: .cell).element(boundBy: 1).buttons["Share Circle"].tap()
      
    }
    
    func testthirdsharebutton() throws {
        
        
        let app = XCUIApplication()
        app.windows.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 2).children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element(boundBy: 1).buttons["More"].tap()
        
        let app2 = app
        app2.tables/*@START_MENU_TOKEN@*/.staticTexts["Share"]/*[[".cells.staticTexts[\"Share\"]",".staticTexts[\"Share\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.tables.cells.containing(.staticText, identifier:"DAILY NEW CASES").buttons["Share Circle"].tap()
        app2/*@START_MENU_TOKEN@*/.navigationBars["UIActivityContentView"]/*[[".otherElements[\"ActivityListView\"].navigationBars[\"UIActivityContentView\"]",".navigationBars[\"UIActivityContentView\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.buttons["Close"].tap()
        
    }
    
    func testfourthbutton() {
        
        
        let app = XCUIApplication()
        app.windows.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 2).children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element(boundBy: 1).swipeUp()
        
        let tablesQuery2 = app.tables
        let tablesQuery = tablesQuery2
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["GROWTH OF CASES"]/*[[".cells.staticTexts[\"GROWTH OF CASES\"]",".staticTexts[\"GROWTH OF CASES\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeUp()
        tablesQuery2.cells.containing(.staticText, identifier:"GROWTH OF CASES").buttons["More"].tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Share"]/*[[".cells.staticTexts[\"Share\"]",".staticTexts[\"Share\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.navigationBars["UIActivityContentView"]/*[[".otherElements[\"ActivityListView\"].navigationBars[\"UIActivityContentView\"]",".navigationBars[\"UIActivityContentView\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.buttons["Close"].tap()
    
    }
    
    func testbubbleRotate() {
        
        XCUIDevice.shared.orientation = .landscapeRight
        
        let app = XCUIApplication()
        app.launch()
        app/*@START_MENU_TOKEN@*/.maps.containing(.other, identifier:"Calgary").element/*[[".maps.containing(.other, identifier:\"Caracas\").element",".maps.containing(.other, identifier:\"Guatemala\").element",".maps.containing(.other, identifier:\"North Atlantic Ocean\").element",".maps.containing(.other, identifier:\"Washington\").element",".maps.containing(.other, identifier:\"New York\").element",".maps.containing(.other, identifier:\"Chicago\").element",".maps.containing(.other, identifier:\"Toronto\").element",".maps.containing(.other, identifier:\"Halifax\").element",".maps.containing(.other, identifier:\"Montréal\").element",".maps.containing(.other, identifier:\"Vancouver\").element",".maps.containing(.other, identifier:\"Winnipeg\").element",".maps.containing(.other, identifier:\"Regina\").element",".maps.containing(.other, identifier:\"Calgary\").element"],[[[-1,12],[-1,11],[-1,10],[-1,9],[-1,8],[-1,7],[-1,6],[-1,5],[-1,4],[-1,3],[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeDown()
        app.maps.children(matching: .other).element(boundBy: 14).tap()
        app/*@START_MENU_TOKEN@*/.maps.containing(.other, identifier:"Calgary").element/*[[".maps.containing(.other, identifier:\"Colombia\").element",".maps.containing(.other, identifier:\"Venezuela\").element",".maps.containing(.other, identifier:\"Caracas\").element",".maps.containing(.other, identifier:\"Western Sahara\").element",".maps.containing(.other, identifier:\"North Atlantic Ocean\").element",".maps.containing(.other, identifier:\"San Francisco\").element",".maps.containing(.other, identifier:\"Washington\").element",".maps.containing(.other, identifier:\"United States\").element",".maps.containing(.other, identifier:\"New York\").element",".maps.containing(.other, identifier:\"Chicago\").element",".maps.containing(.other, identifier:\"Toronto\").element",".maps.containing(.other, identifier:\"Halifax\").element",".maps.containing(.other, identifier:\"Montréal\").element",".maps.containing(.other, identifier:\"Vancouver\").element",".maps.containing(.other, identifier:\"Winnipeg\").element",".maps.containing(.other, identifier:\"Regina\").element",".maps.containing(.other, identifier:\"Calgary\").element"],[[[-1,16],[-1,15],[-1,14],[-1,13],[-1,12],[-1,11],[-1,10],[-1,9],[-1,8],[-1,7],[-1,6],[-1,5],[-1,4],[-1,3],[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
    }
    
    func testSearchLandscape() throws {


        XCUIDevice.shared.orientation = .landscapeRight
        
        let app = XCUIApplication()
        let layersButton = app.buttons["Layers"]
        layersButton.tap()
        
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Active"]/*[[".cells.staticTexts[\"Active\"]",".staticTexts[\"Active\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        layersButton.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Recovered"]/*[[".cells.staticTexts[\"Recovered\"]",".staticTexts[\"Recovered\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
      
        
        
        
        
                
    }

    func testExample() throws {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

}
