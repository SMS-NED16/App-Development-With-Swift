import UIKit

// Passing a variable as an argument to the `print` function will write the textual representation
// of that variable to the console
let string = "Hello, world!"
print(string)

let number = 42
print(number)

let boolean = false
print(boolean)

// Results for primitive types and built-in classes are predictable
// But what about our custom types?
class Shoe {
    let color: String
    let size: Int
    let hasLaces: Bool
    
    init(color: String, size: Int, hasLaces: Bool) {
        self.color = color
        self.size = size
        self.hasLaces = hasLaces
    }
}

let myShoe = Shoe(color: "Black", size: 12, hasLaces: true)
let yourShoe = Shoe(color: "Red", size: 8, hasLaces: false)
print("Attempting to print the shoes to the console")
print(myShoe)       // __lldb_expr_6.Shoe
print(yourShoe)     // __lldb_expr_6.Shoe


// New versio nof the `Shoe` class with implements the `CustomStringConvertible` protocol by defining a computed property called
// `description` that returns a custom String representation of the object, usually in a `print` statement
class NewShoe: CustomStringConvertible {
    let color: String
    let size: Int
    let hasLaces: Bool
    
    init(color: String, size: Int, hasLaces: Bool) {
        self.color = color
        self.size = size
        self.hasLaces = hasLaces
    }
    
    // Computed property implemented as part of the `CustomStringConvertible` protocol - the only required property for this protocol
    var description: String {
        return "Shoe(color: \(color), size: \(size), hasLaces: \(hasLaces))"
        
        // Conventionally returns an initializer-like statement, but can be anything we want
//         let doesOrDoesNot = hasLaces ? "does" : "does not"
//         return "This shoe is \(color), size \(size), and \(doesOrDoesNot) have laces."
    }
}

let myNewShoe = NewShoe(color: "Black", size: 12, hasLaces: true)
let yourNewShoe = NewShoe(color: "Red", size: 8, hasLaces: false)
print(myNewShoe)
print(yourNewShoe)
