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
