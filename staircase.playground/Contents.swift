import Foundation

//https://www.hackerrank.com/challenges/staircase/problem
func staircase(n: Int) -> Void {
    for lineNumber in 1...n {
        let spaces = String(repeating: " ", count: n - lineNumber)
        let pounds = String(repeating: "#", count: lineNumber)
        print(spaces + pounds)
    }
}

staircase(n: 6)
