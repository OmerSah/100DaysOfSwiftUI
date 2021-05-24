import UIKit

// Loops

let count = 1...5

// For and while loop
for number in count {
    print(number)
} // Print all the numbers 1 to 5

for _ in count {
    print("Omer")
} // Print 5 times Omer

var number = 0

// Similar to DO keyword in C++
repeat {
    number += 1
    if number == 6 { break }
    if number % 2 == 0 { continue }
    else {
        print(number)
    }
} while number <= 10 // Print all the odd numbers 1 to 5

// Give a label to outside loop
out: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        if product == 25 { print("\(product) \(i) \(j)")
            break out }
    }
}
