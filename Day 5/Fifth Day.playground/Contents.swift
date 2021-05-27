import UIKit

// Functions

// to externally called name internally called
func greeting(to name: String) -> String{
    return "Hello, " + name
}

print(greeting(to: "Omer"))

// Calling with no parameters
func welcomeTo(_ city: String, capital: Bool = false) {
    print("Welcome to " + city)
    if capital {
        print("It is a capital city")
    }
}

welcomeTo("İstanbul")
welcomeTo("Ankara", capital: true)

enum Error {
    case typeError
}

// Variadic functions can pass lots of parameters
func cube(_ numbers: Int...) {
    for number in numbers {
        print("Cube of \(number) is \(number * number * number)")
    }
}

cube(1,2,3,4,5)

// Error throwing
enum PasswordError: Swift.Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

do {
    try checkPassword("password")
    print("You can use this")
} catch {
    print("You can not use this")
} // Execute the catch block

// inout keyword: similar to pass by reference
func changeWithSquare(number: inout Int) {
    number *= number
}

var number = 2
changeWithSquare(number: &number) // Number == 4
