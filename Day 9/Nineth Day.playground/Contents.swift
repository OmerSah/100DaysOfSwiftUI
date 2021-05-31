import UIKit

// Structs 2

// Initializing structs
struct User {
    var name: String {
        didSet {
            print("Your name is \(name)")
        }
    }
    // Initializer with no parameters
    init() {
        name = "Unknown"
        print("A user is created")
    }
}

var user = User() // A user is created
user.name = "Omer" // Your name is Omer
