import UIKit

// Classes and Inheritance

// Classes must have an initializer
// Classes do not have memberwise initializer
class Book {
    let genre: String
    var name: String
    func printType() {
        print("Hey, this is a book.")
    }
    init(name: String, genre: String) {
        self.name = name
        self.genre = genre
    }
}

var book = Book(name: "Hobbit", genre: "Fantasy")
print(book.genre) // Fantasy
print(book.name) // Hobbit

// Class inheritance
class SciFi: Book {
    init(name: String) {
        super.init(name: name, genre: "SciFi")
    }
    // Override method with base method
    override func printType() {
        super.printType()
        print("This is a SciFi book.")
    }
}

var sciFiBook = SciFi(name: "Dune")
print(sciFiBook.genre) // SciFi
print(sciFiBook.name) // Dune
sciFiBook.printType() // Hey, this is a book. This is a SciFi book.

// final keyword does not allow inheritance

// This class can not be inherited
final class Student {
    var name: String
    let id: Int
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}
// Copying structs and classes
struct Singer {
    var name: String
}

class Musician {
    var name: String
    init(name: String) {
        self.name = name
    }
}

// Copy and original structs are different variables
// Changes do not affect each other
var singer = Singer(name: "Pink Floyd")
print(singer.name) // Pink Floyd
var singerCopy = singer
singerCopy.name = "Led Zeppelin"
print(singer.name) // Pink Floyd

// Copy and original musician points the same object in memory
// Changes affect both of them
var musician = Musician(name: "Roger Waters")
print(musician.name) // Roger Waters
var musicianCopy = musician
musicianCopy.name = "Jimmy Page"
print(musician.name) // Jimmy Page
