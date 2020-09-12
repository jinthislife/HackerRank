import UIKit

func makeAnagram(a: String, b: String) -> Int {

    var count = 0
    var aa = Array(a)
    var bb = Array(b)
    
    while aa.count > 0, bb.count > 0 {
        
        if aa.first > bb.first {
            count += 1
            a.dropFirst()
        } else if a.first < b.first {
            count += 1
        } else {
            
        }
    }
    
    return count

}
