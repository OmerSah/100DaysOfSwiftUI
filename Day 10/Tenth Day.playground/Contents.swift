import UIKit

// Classes and Inheritance

// Classes must have an initializer
// Classes do not have memberwise initializer
class Book {
    let genre: String
    var name: String
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
}

var sciFiBook = SciFi(name: "Dune")
print(sciFiBook.genre) // SciFi
print(sciFiBook.name) // Dune
