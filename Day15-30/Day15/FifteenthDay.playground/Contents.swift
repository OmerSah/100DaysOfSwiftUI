import UIKit

class Product {
    var price: Float {
        willSet {
            print("Price is changing. \(price) to \(newValue)")
        }
        didSet {
            print("Price is changed. \(oldValue) to \(price)")
        }
    }
    var name: String
    init(Price: Float, Name: String) {
        self.name = Name
        self.price = Price
    }
    func describe() {}
}

class Book: Product {
    var pageNum: Int = 0 {
        didSet {
            self.describe()
        }
    }
    override func describe() {
        print("It is a book.")
        print("\(pageNum) pages, \(name) : \(price) $")
    }
}

class MusicCD: Product {
    var singer: String = "" {
        didSet {
            self.describe()
        }
    }
    override func describe() {
        print("It is a Music CD.")
        print("\(singer), \(name) Album : \(price) $")
    }
}

var bookProd = Book(Price: 13.5, Name: "Alice in Wonderland")
bookProd.pageNum = 500
var musicProd = MusicCD(Price: 25, Name: "Black")
musicProd.singer = "Metallica"

bookProd.price = 15
musicProd.price = 20
