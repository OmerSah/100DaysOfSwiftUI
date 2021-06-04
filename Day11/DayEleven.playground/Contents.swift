import UIKit

// Protocols and extensions

// Protocol example
protocol Identifiable {
    var id: String { get set }
}

// Have to add id variable
struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

var user = User(id: "1")
displayID(thing: user)

// Extensions
extension Int {
    func squared() -> Int {
        return self * self
    }
}
let number = 8
number.squared() // 64