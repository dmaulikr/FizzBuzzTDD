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
        switch number {
        case 15:
            return Move.FizzBuzz
        case 3:
            return Move.Fizz
        case 5:
            return Move.Buzz
        default:
            return Move.Number
        }
    }
}
