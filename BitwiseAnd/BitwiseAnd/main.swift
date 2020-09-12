//
//  main.swift
//  BitwiseAnd
//
//  Created by Jin Lee on 4/8/20.
//  Copyright © 2020 Jin Lee. All rights reserved.
//

import Foundation

var T = Int(readLine(strippingNewline: true)!)!

while T > 0 {
    let input = readLine(strippingNewline: true)!.split(separator: " ").map { Int(String($0))! }
    let N = input[0]
    let K = input[1]

    var output = 0

    for A in 1...N {
        for B in 1...N where (A<B){
            let result = (A & B)
            output = (result > output && result < K ? result : output)
        }
    }

    print (output)
    
    T -= 1
}

