import UIKit

/*
 
 When we perform  left rotations, the array undergoes the following sequence of changes:
[1, 2, 3, 4, 5] -> [2, 3, 4, 5, 1] -> [3, 4, 5, 1, 2]
 */

func rotLeft(a: [Int], d: Int) -> [Int] {
    let firstPart = a[0..<d]
    var secondPart = a[d..<a.count]
    let rotated : [Int] = Array(secondPart) + Array(firstPart)
    return rotated
}



import XCTest

class ArrayRotationTests: XCTestCase {
    
    func testOne(){
        let input = [33, 47, 70, 37, 8, 53, 13, 93, 71, 72, 51, 100, 60, 87, 97]
        let output = [87, 97, 33, 47, 70, 37, 8, 53, 13, 93, 71, 72, 51, 100, 60]
        XCTAssertEqual(rotLeft(a: input, d: 13), output, "Failed on test one")
    }
    
    func testTwo(){
        let input = [41, 73, 89, 7, 10, 1, 59, 58, 84, 77, 77, 97, 58, 1, 86, 58, 26, 10, 86, 51]
        let output = [77, 97, 58, 1, 86, 58, 26, 10, 86, 51, 41, 73, 89, 7, 10, 1, 59, 58, 84, 77]
        XCTAssertEqual(rotLeft(a: input, d: 10), output, "Failed on test two")
    }
    
    func testThree(){
        let input = [1, 2, 3, 4, 5,]
        let output = [5, 1, 2, 3, 4]
        XCTAssertEqual(rotLeft(a: input, d: 4), output, "Failed on test three")
    }

    
    
}


ArrayRotationTests.defaultTestSuite.run()
