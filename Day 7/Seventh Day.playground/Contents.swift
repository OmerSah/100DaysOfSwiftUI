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
