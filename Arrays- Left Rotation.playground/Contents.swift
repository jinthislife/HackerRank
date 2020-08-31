import UIKit
//https://www.hackerrank.com/challenges/ctci-array-left-rotation/problem

func rotLeft(a: [Int], d: Int) -> [Int] {
    var arr = a
    var r = d
    if d > arr.count {
        r = d % arr.count
    }

    let firstPart: Array = Array(arr[0..<r])
    arr.removeFirst(r)
    arr.append(contentsOf: firstPart)
    return arr
}

rotLeft(a: [1,2,3,4,5], d: 4)
