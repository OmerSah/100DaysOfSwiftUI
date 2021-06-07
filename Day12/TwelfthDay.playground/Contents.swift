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
