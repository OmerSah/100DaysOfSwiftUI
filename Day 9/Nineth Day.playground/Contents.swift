import UIKit

// Structs 2

// Initializing structs
struct User {
    var name: String {
        didSet {
            print("Your name is \(name)")
        }
    }
    // Initializer with name parameter
    init(name: String) {
        // self refers to name property
        self.name = name
        print("A user is created")
    }
}

var user = User(name: "Omer") // A user is created
user.name = "Omer Faruk" // Your name is Omer Faruk
