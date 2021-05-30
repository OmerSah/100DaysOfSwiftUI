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

// didSet property Observer
struct Reminder {
    let event: String
    var days: Int {
        didSet {
            print("\(days) days left to \(event)")
        }
    }
}

var reminder = Reminder(event: "Graduation", days: 25)
reminder.days = 24 // 24 days left to Graduation
reminder.days = 23 // 23 days left to Graduation
reminder.days = 22 // 22 days left to Graduation
reminder.days = 21 // 21 days left to Graduation

// Structs with methods and mutating methods
struct ElectricBill {
    var kWh: Int
    // Method
    func calculateAmount() -> Int {
        return kWh * 10
    }
    mutating func resetBill() {
        kWh = 0
    }
}

var bill = ElectricBill(kWh: 1_000)
print(bill.calculateAmount()) // 10_000

// Mutating methods are only used with variables not constants
var Bill = ElectricBill(kWh: 100)
print(Bill.calculateAmount()) // 1_000
Bill.resetBill()
print(Bill.calculateAmount()) // 0
