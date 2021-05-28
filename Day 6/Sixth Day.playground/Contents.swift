import UIKit

// Closures

// We can define functions like variables
let greet = { () in
    print("Hello everyone!")
}

greet() // Hello everyone!

// Can return values
let greetWithReturn = { (name: String) -> String in
    return "Hello \(name)"
}

// Do not have to use parameter labels
print(greetWithReturn("Omer")) // Hello Omer

// Can use closures as parameters
func greetEveryone(greetFunc: () -> Void){
    greetFunc()
}

greetEveryone(greetFunc: greet) // Hello everyone!

// Trailing closures syntax
func howAreYou(mood: () -> Void) {
    print("How are you?")
    mood()
}

howAreYou {
    print("I am good")
}
