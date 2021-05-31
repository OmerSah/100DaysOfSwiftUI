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

// Lazy var
struct WorkExperience {
    init() {
        print("Loading...")
    }
}
struct CSStudent {
    var name: String
    // workExperience will be created only
    // when it is first accessed
    lazy var workExperience = WorkExperience()
    init(name: String) {
        print("Become an iOS Developer \(name)")
        self.name = name
    }
}
// No work experience
var csStudent = CSStudent(name: "Omer") // Become an iOS Developer Omer
csStudent.workExperience // Loading...

