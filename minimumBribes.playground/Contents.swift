import UIKit

func minimumBribes(q: [Int]) -> Void {
    var totalBribe = 0
    
    for i in 0..<q.count {
        let possibleBribeCnt = q[i] - (i + 1)
        if possibleBribeCnt > 2 {
            print("Too chaotic")
            return
        }
  
        if possibleBribeCnt > 0 {
            totalBribe += possibleBribeCnt
        }
    }
    return print(totalBribe)
}

minimumBribes(q: [1, 2, 5, 3, 7, 8, 6, 4])
