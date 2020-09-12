//
//  main.swift
//  PrimeNumber
//
//  Created by Jin Lee on 4/8/20.
//  Copyright © 2020 Jin Lee. All rights reserved.
//

import Foundation

// Enter your code here

func isPrime(_ p: Int) -> String {
    switch p {
    case 1:
        return "Not prime"
    case 2,3:
        return "Prime"
    default:
        for i in 2...Int(sqrt(Double(p))) {
            if p % i == 0 {
                return "Not prime"
            }
        }
    }
    
    return "Prime"
}

var testCases = Int(readLine()!)!

while testCases > 0 {
    let input = Int(readLine()!)!

    // isPrime(input) ? print("Prime"): print("Not prime")
    print(isPrime(input))
    testCases -= 1
}
