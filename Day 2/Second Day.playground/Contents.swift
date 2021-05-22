import UIKit

// Collections

let arr = ["o","m","e","r"]

print(arr[0]+arr[1]+arr[2]+arr[3])

// Set: Not ordered and no duplicates like hash set
let set = Set(["one","two","three"])

var tuple = (first: "Omer", second: "Sahin")
tuple.0 // Omer
tuple.first // Omer
tuple.first = "Faruk" // Can be assigned a new value in same type

// Dictionaries
var ages = ["omer": 22, "faruk": 23]
ages["omer"] // 22

// Special syntax for dictionaries and arrays
var array = [Int]() // Empty array
var dict = [String: String]() // Empty dictionary
dict["a"] = "b" // Adds a new element

// Type should be written in set
var newSet = Set<Int>() // Empty set

// Enums
enum State {
    case Opened
    case Closed
}

