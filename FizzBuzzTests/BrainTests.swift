//
//  BrainTests.swift
//  FizzBuzz
//
//  Created by Forrest Zhao on 4/4/17.
//  Copyright © 2017 Forrest Zhao. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class BrainTests: XCTestCase {
    
    var brain: Brain!
    
    override func setUp() {
        super.setUp()
        brain = Brain()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testIsDivisibleByThree() {
        let result = brain.isDivisibleByThree(number: 3)
        XCTAssertEqual(result, true)
    }
    
    func testNotDivisibleByThree() {
        let result = brain.isDivisibleByThree(number: 1)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByFive() {
        let result = brain.isDivisibleByFive(number: 5)
        XCTAssertEqual(result, true)
    }
    
    func testNotDivisibleByFive() {
        let result = brain.isDivisibleByFive(number: 6)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByThreeAndFive() {
        let result = brain.isDivisibleByThreeAndFive(number: 15)
        XCTAssertEqual(result, true)
    }
    
    func testNotDivisibleByThreeAndFive() {
        let result = brain.isDivisibleByThreeAndFive(number: 6)
        XCTAssertEqual(result, false)
    }
    
    func testSayFizz() {
        let result = brain.check(number: 3)
        XCTAssertEqual(result, Move.Fizz)
    }
    
    func testSayBuzz() {
        let result = brain.check(number: 5)
        XCTAssertEqual(result, Move.Buzz)
    }
    
    func testSayFizzBuzz() {
        let result = brain.check(number: 15)
        XCTAssertEqual(result, Move.FizzBuzz)
    }
    
    func testCheckOne() {
        let result = brain.check(number: 1)
        XCTAssertEqual(result, Move.Number)
    }
}
