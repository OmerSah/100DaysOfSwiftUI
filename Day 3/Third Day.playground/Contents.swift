import UIKit

// Operators and Conditions

var first = 3
var second = 2
var result = 3 * 2

result % (first + second) // 1

let str1 = "Omer "
let str2 = "Faruk"
var str3 = str1 + str2 // Omer Faruk
// Swift is type-safe language(You can not mix the types)

// Compound assignment operators
first += 5 // 8
str3 += str1 // "Omer FarukOmer"

// Comparison operators
first == second // false
first >= second // true
str1 > str2 // true

// Conditions
if first + second == result {
    print(1)
} else if first + second == 10 {
    print(2) // Prints 2
} else {
    print(3)
}

// Bitwise Operators
print(first > result && first > second) // Prints true

// Ternary Operator
print(first > second ? "Ternary" : "Operator") // Ternary

// Switch Case
let Mood = "Happy"

switch Mood {
case "Happy":
    print("I am happy")
    fallthrough // Continue
default:
    print("I don't know")
} // Print both two cases duue to fallthrough

// Range operators
let numberOfPeople = 50

switch numberOfPeople {
case 0 ... 25: // Between 0 and 25 (Both of are included)
    print("Too small")
case 25 ..< 50: // 50 is excluded
    print("It is OK")
default:
    print("It is crowded") // Prints
}

