import UIKit

//https://www.hackerrank.com/challenges/2d-array/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=arrays

func hourglassSum1(arr: [[Int]]) -> Int {
    var sums = [Int]()
    
    let maxIndex = arr.count - 3
    for row in 0...maxIndex {
        for col in 0...maxIndex {
            let sum = arr[row][col] + arr[row][col+1] + arr[row][col+2] + arr[row+1][col+1]
                    + arr[row+2][col] + arr[row+2][col+1] + arr[row+2][col+2]

            sums.append(sum)
        }
    }
    sums.sort()
    return sums.last!
}

func hourglassSum2(arr: [[Int]]) -> Int {
    var maxSum = Int.min
    
    let maxIndex = arr.count - 3
    for row in 0...maxIndex {
        for col in 0...maxIndex {
            let sum = arr[row][col] + arr[row][col+1] + arr[row][col+2] + arr[row+1][col+1]
                    + arr[row+2][col] + arr[row+2][col+1] + arr[row+2][col+2]

            if sum > maxSum {
                maxSum = sum
            }
        }
    }
    return maxSum
}

hourglassSum1(arr: [[1, 1, 1, 0, 0, 0],
[0, 1, 0, 0, 0, 0],
[1, 1, 1, 0, 0, 0],
[0, 0, 2, 4, 4, 0],
[0, 0, 0, 2, 0, 0],
[0, 0, 1, 2, 4, 0]])

hourglassSum2(arr: [[1, 1, 1, 0, 0, 0],
                    [0, 1, 0, 0, 0, 0],
                    [1, 1, 1, 0, 0, 0],
                    [0, 0, 2, 4, 4, 0],
                    [0, 0, 0, 2, 0, 0],
                    [0, 0, 1, 2, 4, 0]])

