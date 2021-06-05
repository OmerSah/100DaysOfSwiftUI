import UIKit

// Protocols and extensions

// Protocol example
protocol Identifiable {
    var id: String { get set }
}

// Have to add id variable
struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

var user = User(id: "1")
displayID(thing: user)

// Extensions
extension Int {
    func squared() -> Int {
        return self * self
    }
}
let number = 8
number.squared() // 64

// Protocol inheritance
protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation {
    var name: String { get set }
}

struct Staff: Employee {
    var name: String
    
    func calculateWages() -> Int {
        return self.name.count * 1000
    }
    
    func study() {
        print("Studying...")
    }
    
    func takeVacation(days: Int) {
        print("Have \(days) days of vacation")
    }
}

var newStaff = Staff(name: "Omer")
newStaff.calculateWages() // 4000
newStaff.study() // Studying
newStaff.takeVacation(days: 30) // Have 30 days of vacation

