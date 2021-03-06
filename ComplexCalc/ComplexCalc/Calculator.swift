//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    
    // Basic functions - add, subtract, multiply, divide with lhs/rhs
    func add(lhs : Int, rhs : Int) -> Int {
        return lhs + rhs
    }
    func subtract(lhs : Int, rhs : Int) -> Int {
        return lhs - rhs
    }
    func multiply(lhs : Int, rhs : Int) -> Int {
        return lhs * rhs
    }
    func divide(lhs : Int, rhs : Int) -> Int {
        return lhs / rhs
    }
    
    // Basic functions - add, multiply without array input
    func add(_ inputArr : [Int]) -> Int {
        var output = 0
        for i in 0...(inputArr.count - 1) {
            output = output + inputArr[i]
        }
        return output
    }

    func multiply(_ inputArr : [Int]) -> Int {
        if inputArr.count > 1 {
            var output = inputArr[0]
            for i in 1...(inputArr.count - 1) {
                output = output * inputArr[i]
            }
            
            return output
        } else if inputArr.count == 1 {
            return inputArr[0]
        }
        
        return 0
    }
    
    // Count and avg functions with array input
    func count(_ inputArr : [Int]) -> Int {
        return inputArr.count
    }
    
    func avg(_ inputArr : [Int]) -> Int {
        var sum = 0
        for i in 0...(inputArr.count - 1) {
            sum = sum + inputArr[i]
        }
        
        if (inputArr.count > 0) {
            return sum / inputArr.count
        }
        
        return 0
    }
    
    // Basic functions - add, subtract, multiply, divide on tuples
    func add(lhs : (Int, Int), rhs : (Int, Int)) -> (Int, Int) {
        return (lhs.0 + rhs.0, lhs.1 + rhs.1 )
    }
    func subtract(lhs : (Int, Int), rhs : (Int, Int)) -> (Int, Int) {
         return (lhs.0 - rhs.0, lhs.1 - rhs.1 )
    }
    func multiply(lhs : (Int, Int), rhs : (Int, Int)) -> (Int, Int) {
        return (lhs.0 * rhs.0, lhs.1 * rhs.1 )
    }
    func divide(lhs : (Int, Int), rhs : (Int, Int)) -> (Int, Int) {
         return (lhs.0 / rhs.0, lhs.1 / rhs.1 )
    }

    // String-to-Int dictionary methods
    func add(lhs: [String : Int], rhs: [String : Int]) -> [String : Int] {
        var output : [String : Int] = [:]
        for (key, lhsVal) in lhs {
            if let rhsVal = rhs[key] {
                output[key] = lhsVal + rhsVal
            }
        }
        return output
    }
    
    func subtract(lhs: [String : Int], rhs: [String : Int]) -> [String : Int] {
        var output : [String : Int] = [:]
        for (key, lhsVal) in lhs {
            if let rhsVal = rhs[key] {
                output[key] = lhsVal - rhsVal
            }
        }
        return output    }

    // Math op, ex. `lhs: 10, rhs: -5, op: { ($0 + $1) + ($0 - $1) }) == 20`

    func mathOp(lhs: Int, rhs: Int, op : (Int, Int) -> Int) -> Int {
        return op(lhs, rhs)
    }

    func mathOp(args: [Int], beg: Int, op : (Int, Int) -> Int) -> Int {
        var output = beg
        for i in 0...(args.count - 1) {
            output = op(output, args[i])
        }
        return output
    }
}


