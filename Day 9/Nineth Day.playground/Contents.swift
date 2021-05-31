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

// Static and private properties
struct Student {
    static var numberOfStudents: Int = 0
    var name: String = "Omer"
    // You can not access to id directly
    private let id: Int
    // Every instance share same numberOfStudents
    init(name: String, id: Int) {
        self.name = name
        Student.numberOfStudents += 1
        self.id = id
        print("Your id is \(id)")
    }
}

var s1 = Student(name: "Omer",id: 1) // Your id is 1
var s2 = Student(name: "Faruk",id: 2) // Your id is 2
var s3 = Student(name: "Sahin",id: 3) // Your id is 3
print(Student.numberOfStudents) // 3
