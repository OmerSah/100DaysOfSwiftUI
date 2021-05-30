import UIKit

// Structs, properties and methods

// Struct
struct Student {
    // Properties
    let id: Int
    var age: Int
}

var student = Student(id: 1, age: 20)
print(student.age, student.id) // 20 1

student.age = 21
print(student.age, student.id) // 21 1

// Struct with computed property
struct User {
    let name: String
    let isItAdmin: Bool
    // Computed properties
    var authorityStatus: String {
        if isItAdmin {
            return "\(name) is an admin."
        } else {
            return "\(name) is not an admin."
        }
    }
}

var user = User(name: "Omer", isItAdmin: true)
print(user.authorityStatus) // Omer is an admin
