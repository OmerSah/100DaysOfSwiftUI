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
