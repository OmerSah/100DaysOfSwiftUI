import UIKit

var greeting = "Hello, playground"

var str1 = "anne"
var str2 = "manae"

// Remove the items that is repeated above count
func removeChar(_ str1: String,_ count: Int) -> String? {
    var finalStr: String = str1
    var dict: [Character:Int] = [:]
    for char in finalStr {
        if !char.isWhitespace {
            dict[char] = (dict[char] ?? 0) + 1
        }
    }
    for (key, value) in dict {
        if value >= count {
            // Replace characters with ""(Delete)
            finalStr = finalStr.replacingOccurrences(of: String(key), with: "")
        }
    }

    return finalStr
}

removeChar("ahmet aae ", 3)

func familyBirths(name: String) -> Int? {
    if name == "Son" {return 1998}
    if name == "Mom" {return 1974}
    if name == "Dad" {return 1971}
    return nil
}

var nameArr = ["Mom", "Dad", "Grandma"]

for i in 0..<nameArr.count {
    print(familyBirths(name: nameArr[i]) ?? 0)
    if let birth = familyBirths(name: nameArr[i]) {print(birth,nameArr[i])}
}
