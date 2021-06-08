import UIKit

// Optionals
// Can hold unknown(nil) values
var name: String? = nil
name = "Omer"

// Unwrapping optionals
// Checker whether is nil or not
name = nil
if let unwrapped = name {
    print("Your name is \(unwrapped)")
} else {
    print("Name not found")
} // Name not found

// Guard let
// Unwrapped value remains after guard
// Can break the loop, function or condition
func sayHello(_ name: String?) {
    guard let unwrapped = name else {
        print("Your name is null")
        return
    }
    
    print("Hello \(unwrapped)") // Can usable after guard
}
name = "Omer"
sayHello(name) // Hello Omer

// Force unwrapping with !
var number: String = "5"
var num = Int(number)! // num is an optional integer // 5

// Implicitly unwrapping
// Do not need to use if let or guard let
var value: Int! = nil
print(value) // nil

// Nil coalescing
func howOld(_ age: Int) -> String? {
    if age < 150 && age > 0 {
        return "You are \(age)"
    } else {
        return nil
    }
}
var sayMyAge = howOld(195) ?? "Invalid" // Default value for nil
print(sayMyAge) // Invalid

// Optional chaining
// If the value is nil then ignore rest of them
let lectures = ["Science", "Math", "History"]
var str = lectures.first?.uppercased()
print(str!) // SCIENCE // (Force unwrapped)

// Optional try
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}
// A short way to use try
if let result = try? checkPassword("password") {
    print("Hey, your password is \(result)")
} else {
    print("It is so obvious")
} // It is so obvious

// If value is nil then it will crash
try! checkPassword("123456") // Does not throw an error
print("OK") // OK
