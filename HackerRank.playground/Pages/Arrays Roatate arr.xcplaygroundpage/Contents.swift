import UIKit

/*
 
 When we perform  left rotations, the array undergoes the following sequence of changes:
[1, 2, 3, 4, 5] -> [2, 3, 4, 5, 1] -> [3, 4, 5, 1, 2]
 */

func rotLeft(a: [Int], d: Int) -> [Int] {
    var rotatedArr = a
    
    for _ in 0..<d {
        var first = rotatedArr.remove(at: 0)
        rotatedArr.append(first)
    }
    
    return rotatedArr

}



