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

// Implicitly unwrapping
// Do not need to use if let or guard let
var value: Int! = nil
print(value) // nil

// Nil coalescing
func howOld(_ age: Int) -> String? {
    if age < 150 && age > 0 {
        return "You are \(age)"
    } else {
        return nil
    }
}
var sayMyAge = howOld(195) ?? "Invalid" // Default value for nil
print(sayMyAge) // Invalid

// Optional chaining
// If the value is nil then ignore rest of them
let lectures = ["Science", "Math", "History"]
var str = lectures.first?.uppercased()
print(str!) // SCIENCE // (Force unwrapped)

// Optional try
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}
// A short way to use try
if let result = try? checkPassword("password") {
    print("Hey, your password is \(result)")
} else {
    print("It is so obvious")
} // It is so obvious

// If value is nil then it will crash
try! checkPassword("123456") // Does not throw an error
print("OK") // OK

// Failable initializer
class User {
    var id: Int
    
    init?(ID: String) {
        if let userID = Int(ID) {
            self.id = userID
        } else {
            return nil
        }
    }
}
// ID takes a string but must be a integer value
var newUser = User(ID: "Omer") // Initializer will failed
print(newUser?.id ?? "It is not valid") // It is not valid

// Typecasting
class Staff {
    var id: Int = 0
    init(_ id: Int) {
        self.id += id
    }
}
class Student: Staff {
    func whichGrade() -> Int {
        return Int.random(in: 0...12)
    }
}
class Teacher: Staff { }

var academicStaff = [Student(1), Teacher(2), Student(3), Teacher(4)]

for person in academicStaff {
    if let student = person as? Student {
        print("ID is \(student.id), Grade is \(student.whichGrade())")
    }
} // Print id and grade if person is student
