//
//  File.swift
//  FizzBuzz
//
//  Created by Forrest Zhao on 4/4/17.
//  Copyright © 2017 Forrest Zhao. All rights reserved.
//

import Foundation

class Brain {
    
    func isDivisibleByThree(number: Int) -> Bool {
        return isDivisible(divisor: 3, number: number)
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        return isDivisible(divisor: 5, number: number)
    }
    
    func isDivisibleByThreeAndFive(number: Int) -> Bool {
        return isDivisible(divisor: 15, number: number)
    }
    
    func isDivisible(divisor: Int, number: Int) -> Bool {
        return number % divisor == 0
    }
    
    func check(number: Int) -> Move {
        if isDivisibleByThreeAndFive(number: number) {
            return .FizzBuzz
        } else if isDivisibleByThree(number: number) {
            return .Fizz
        } else if isDivisibleByFive(number: number) {
            return .Buzz
        } else {
            return .Number
        }
    }
}
