//
//  GameTests.swift
//  FizzBuzz
//
//  Created by Forrest Zhao on 4/4/17.
//  Copyright © 2017 Forrest Zhao. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {
    
    var game: Game!
    
    override func setUp() {
        super.setUp()
        game = Game()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }
    
    func testOnePlayScoreIncremented() {
        let _ = game.play(move: Move.Fizz)
        XCTAssertTrue(game.score == 0)
    }
    
    func testOnPlayTwiceScoreIncremented() {
        game.score = 1
        let _ = game.play(move: Move.Fizz)
        XCTAssertTrue(game.score == 1)
    }
    
    func testIfMoveIsRight() {
        game.score = 2
        let response = game.play(move: Move.Fizz)
        let result = response.0
        XCTAssertEqual(result, true)
    }
    
    func testPlayFizzWhileScoreOne() {
        game.score = 1
        let response = game.play(move: Move.Fizz)
        let result = response.0
        XCTAssertTrue(result == false)
    }
    
    func testPlayBuzzCorrect() {
        game.score = 4
        let response = game.play(move: Move.Buzz)
        let result = response.0
        XCTAssertTrue(result == true)
    }
    
    func testPlayBuzzInCorrect() {
        game.score = 5
        let response = game.play(move: Move.Buzz)
        let result = response.0
        XCTAssertTrue(result == false)
    }
    
    func testPlayFizzBuzzCorrect() {
        game.score = 14
        let response = game.play(move: Move.FizzBuzz)
        let result = response.0
        XCTAssertTrue(result == true)
    }
    
    func testPlayFizzBuzzInCorrect() {
        game.score = 19
        let response = game.play(move: Move.FizzBuzz)
        let result = response.0
        XCTAssertTrue(result == false)
    }
    
    func testPlayNumberCorrect() {
        game.score = 3
        let response = game.play(move: Move.Number)
        let result = response.0
        XCTAssertTrue(result == true)
    }
    
    func testPlayNumberInCorrect() {
        game.score = 3
        let response = game.play(move: Move.Fizz)
        let result = response.0
        XCTAssertTrue(result == false)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        let _ = game.play(move: Move.Fizz)
        XCTAssertEqual(game.score, 1)
    }
    
    func testPlayShouldReturnIfMoveRight() {
        let response = game.play(move: Move.Number)
        XCTAssertNotNil(response.1)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = game.play(move: Move.Number)
        XCTAssertNotNil(response.1)
    }
    
    func testResetGameScore() {
        game.score = 4
        game.reset()
        XCTAssertEqual(game.score, 0)
    }
    
}
