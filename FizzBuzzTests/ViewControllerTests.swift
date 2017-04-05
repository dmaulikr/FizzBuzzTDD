//
//  ViewControllerTests.swift
//  FizzBuzz
//
//  Created by Forrest Zhao on 4/4/17.
//  Copyright © 2017 Forrest Zhao. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ViewControllerTests: XCTestCase {
    
    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared.keyWindow!.rootViewController = viewController
        
        let _ = viewController.view
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testMove1IncrementsScore() {
        viewController.play(move: Move.Number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    func testMove2IncrementScore() {
        viewController.play(move: Move.Number)
        viewController.play(move: Move.Number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }
    
    func testHasAGame() {
        XCTAssertNotNil(viewController.game)
    }
    
    func testPlayFizz() {
        viewController.play(move: Move.Number)
        viewController.play(move: Move.Number)
        viewController.play(move: Move.Fizz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 3)
    }
    
    func testPlayBuzz() {
        viewController.play(move: Move.Number)
        viewController.play(move: Move.Number)
        viewController.play(move: Move.Fizz)
        viewController.play(move: Move.Number)
        viewController.play(move: Move.Buzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 5)
    }
    
    func testPlayFizzBuzz() {
        viewController.game?.score = 14
        viewController.play(move: Move.FizzBuzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 15)
    }
    
    func testIncorrectMoveNoScoreIncrement() {
        viewController.play(move: Move.Number)
        viewController.play(move: Move.Number)
        viewController.play(move: Move.Buzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }
}
