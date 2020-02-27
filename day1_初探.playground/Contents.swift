import UIKit

/*
对于数组 [1,2,3,4,5,6,7,8,9,10]，首先获取 > 2 的数字，
获取到的数字之后 + 1，
再输出所有数字中的偶数
 */

let array = [1,2,3,4,5,6,7,8,9,10]

func test(arr: [Int]) {
    for num in arr {
        if num > 2 {
            let t = num + 1
            if t % 2 == 0 {
                print(t)
            }
        }
    }
}

test(arr: array)

/// 函数式编程
extension Array {
    func test_filter(_ include: (Element) -> Bool) -> [Element] {
        var a = [Element]()
        for i in self {
            if include(i) == true {
                a.append(i)
            }
        }
        return a
    }
    
    func test_forEach(_ each: (Element) -> Void) {
        for i in self {
            each(i)
        }
    }
}

let flitter = array.test_filter { (num) -> Bool in
    return num > 2
}.test_filter { (num) -> Bool in
    return (num + 1) % 2 == 0
}.test_forEach { (i) in
    print(i)
}
