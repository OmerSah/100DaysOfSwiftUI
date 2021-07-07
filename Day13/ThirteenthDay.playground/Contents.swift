import UIKit

var greeting = "Hello, playground"

var names = [String]()

names += ["Ali"]
names += ["Veli"]
type(of: names)

var dict = [
    "First": "Ali",
    "Second": "Veli"
]

dict["First"]
dict["Second"]

var conditon = "Satisfied"
var truth = false

if conditon == "Satisfied" && !truth {
    print("Condition!!")
} else if conditon == "Not" {
    print("Not!!")
} else {
    print("Satisfied!!")
}

for i in 1..<3 {
    print("\(i) x 10 = \(i * 10)")
}

var array = [Int]()

extension Int {
    var isEven: Bool {
        if self % 2 == 0 {return true}
        else {return false}
    }
    var isPrime: Bool {
        if (self > 2 && self.isEven) || self < 2 {
            return false
        } else {
            for i in 2..<self {
                if self % i == 0 {return false}
            }
            return true
        }
    }
}

array = [1, 2, 3, 4, 8]

for num in array {
    print("Is \(num) even?: \(num.isEven)")
    var closestPrime = 0
    for i in 0..<num {
        if i.isPrime {closestPrime = i}
    }
    if closestPrime != 0 {
        print("Smaller closest prime is \(closestPrime)")
    }
}

var score = Int.random(in: 0...100)

switch score {
case 0..<50:
    print("Failed! Your Score: \(score)")
case 50...100:
    print("Passed! Your Score: \(score)")
default:
    print("Undefined Score! Your Score: \(score)")
}

