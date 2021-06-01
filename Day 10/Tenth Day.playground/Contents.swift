import UIKit

// Classes and Inheritance

// Classes must have an initializer
// Classes do not have memberwise initializer
class Student {
    let id: String
    var name: String
    init(name: String, id: String) {
        self.name = name
        self.id = id
    }
}

var student = Student(name: "Omer", id: "1")
print(student.id) // 1
print(student.name) // Omer
