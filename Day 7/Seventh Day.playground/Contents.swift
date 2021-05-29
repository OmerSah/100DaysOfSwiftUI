import UIKit

// Closures part 2

// Closures as parameters that accept parameters
func goTo(action: (String) -> Void) {
    print("Engine is started.") // First
    action("Istanbul")
}

// Trailing closure syntax
goTo { (destination: String) in
    print("You are going to \(destination)") // Second
} // Prints First + Second

func whoAreYou(_ name: String, action: (String) -> (String)) {
    print("Who are you?")
    let answer = action(name)
    print(answer)
}

// Trailing closure syntax
whoAreYou("Omer") {(name: String) -> String in
    return "Hey, I am \(name)"
} // Who are you? Hey, I am Omer

// Shorthand parameters with different examples

whoAreYou("Omer") { name -> String in
    return "Hey, I am \(name)"
} // Who are you? Hey, I am Omer

whoAreYou("Omer") { name in
    "Hey, I am \(name)"
} // Who are you? Hey, I am Omer

whoAreYou("Omer") { // The shortest
    "Hey, I am \($0)"
} // Who are you? Hey, I am Omer

// Multiple parameters
func whoAreYou(name: String, age: Int, action: (String,Int) -> (String)) {
    print("Who are you?")
    let answer = action(name,age)
    print(answer)
}

whoAreYou(name: "Omer", age: 22) {
    "Hey, I am \($0) and I am \($1)"
} // Who are you? Hey, I am Omer and I am 22

// Returning a closure
func goTo() -> (String) -> Void {
    var counter = 1
    return {
        print("\(counter). You are going to \($0)")
        counter += 1
    }
}
// Capturing values and tracking closure calls
let result = goTo()
result("Istanbul") // 1. You are going to Istanbul
result("Istanbul") // 2. You are going to Istanbul
result("Istanbul") // 3. You are going to Istanbul


