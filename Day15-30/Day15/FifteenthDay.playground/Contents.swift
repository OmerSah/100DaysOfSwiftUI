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
    // Swift access modifier
    fileprivate var name: String
    init(Price: Float, Name: String) {
        self.name = Name
        self.price = Price
    }
    static func whoAreYou() {print("I am a product")}
    func describe() {}
}

class Book: Product {
    var pageNum: Int = 0
    override func describe() {
        print("It is a book.")
        print("\(pageNum) pages, \(name) : \(price) $")
    }
    func sayPageNum() {
        print("Page -> \(pageNum)")
    }
}

class MusicCD: Product {
    var singer: String = ""
    override func describe() {
        print("It is a Music CD.")
        print("\(singer), \(name) Album : \(price) $")
    }
    func saySinger() {
        print("Singer -> \(singer)")
    } 
}

var bookProd = Book(Price: 13.5, Name: "Alice in Wonderland")
bookProd.pageNum = 500
var musicProd = MusicCD(Price: 25, Name: "Black")
musicProd.singer = "Metallica"
var products: [Product] = [bookProd, musicProd]

for prod in products {
    prod.describe()
    if let book = prod as? Book {
        book.sayPageNum()
    } else if let musicCD = prod as? MusicCD {
        musicCD.saySinger()
    }
}

bookProd.price = 15
musicProd.price = 20

Product.whoAreYou() // Static Function
