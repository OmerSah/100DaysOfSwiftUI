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

