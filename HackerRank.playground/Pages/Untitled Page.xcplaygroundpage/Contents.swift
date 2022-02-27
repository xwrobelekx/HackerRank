//: [Previous](@previous)

import Foundation

func minimumBribes(q: [Int]) -> Void {
    func minimumBribes(q: [Int]) -> Void {
     let s = q.sorted()
     var b = 0
        for i in 0..<q.count {
            if q[i] == s[i]{
                //all good
            } else if q[i] - s[i] == 1   {
                b += 1
            } else if q[i] - s[i] == 2   {
                b += 2
            } else if q[i] - s[i] > 2 {
                b += q[i] - s[i]
                print("Too chaotic")
                return
            }
        }
     
         print(b)
    }
    
//    for i in 1...q.count {
//        if (q[i-1] - (i) >= 2) {
//           num += 1
//        } else if  (q[i-1] - (i) == 1){
//            num += 1
//        }
//
//        if num == 3 {
//            print(num)
//            print("Too chaotic")
//            return
//        }
//    }
    
    
    //print(o)

}



minimumBribes(q: [2, 5, 1, 3, 4])









//: [Next](@next)
