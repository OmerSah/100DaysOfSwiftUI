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
