import UIKit

// Collections

let arr = ["o","m","e","r"]

print(arr[0]+arr[1]+arr[2]+arr[3])

// Set: Not ordered and no duplicates like hash set
let set = Set(["one","two","three"])
set.contains("one")

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
var newArray = Array<Int>()
var newDict = Dictionary<String,String>()

// Type should be written in set
var newSet = Set<Int>() // Empty set

// Enums with associated values
enum State {
    case Opened(time: String)
    case Closed(time: String)
}

let state = State.Opened(time: "11.30")

// Enums with raw values
enum Sport: Int{
    case football
    case volleyball
    case basketball
}

let sport = Sport(rawValue: 2) // Basketball

