import UIKit

// EXAMPLE 1 - Building an app for a bookstore that lists books for sale
// Structure for each book
struct Book {
    var name: String
    var publicationYear: Int
}

// Book instances that have been released
let firstHarryPotter = Book(name: "Harry Potter and The Philosopher's Stone", publicationYear: 1997)
let secondHarryPotter = Book(name: "Harry Potter and The Chamber of Secrets", publicationYear: 1998)
let thirdHarryPotter = Book(name: "Harry Potter and The Prisoner of Azkaban", publicationYear: 1999)

// Array of books that have already been released
let books = [firstHarryPotter, secondHarryPotter, thirdHarryPotter]

// But how to initialize a book that hasn't been released yet?
// Could set publicationYear to 0 - but inaccurate since this would imply ~2000 yo book
// Could set publicationYear to next year but that isn't confirmed either
// Solution? Use nil. Absence of a value in Swift.
// let unannouncedBook = Book(name: "Rebels and Lions", publicationYear: nil)        // compiler causes an error because Swift expects an Int, not "nil"

struct NewBook {
    var name: String
    var publicationYear: Int?       // optional Int - a wrapper around an object that may or may not be an Int
}

// Every data type in Swift has a corresponding optional - Int <=> Int?, String <=> String? etc

let firstHPBook = NewBook(name: "HP and the Philosopher's Stone", publicationYear: 1997)
let secondHPBook = NewBook(name: "HP and the Chamber of Secrets", publicationYear: 1998)
let thirdHPBook = NewBook(name: "HP and the Prisoner of Azkaban", publicationYear: 1999)
let unannouncedBook = NewBook(name: "Rebels and Lions", publicationYear: nil)   // no error because this struct can handle nil values for publicationYear

let moreBooks = [firstHPBook, secondHPBook, thirdHPBook, unannouncedBook]       // compiler throws no error

// Always specify a type when working with optionals - Type Inference cannot determine what value `nil` SHOULD represent
var serverResponseCode = 404            // Nil - Inferred type is `Int`, not `Int?`
// var newServerResponseCode = nil      // Nothing for newServerResponseCode to infer type from - not safe code!
var anotherServerResponseCode: Int? = 404       // Much safer - set to 404 but could be `nil` later
var yetAnotherServerResponseCode: Int? = nil    // Much safer - set to `nil` now but can be an `Int` such as 404 later

// Working with optionals
//// Method 1: Check that the value we're going to access later is not nil
//var publicationYear = 2019
//
//if publicationYear != nil {
//    let actualYear = publicationYear!           // force unwrapping of an optional
//    print(actualYear)
//}
//
//publicationYear = nil
//if publicationYear != nil {
//    print("This will not be printed because the conditional never evaluates to true.")
//}
//// Without doing this, we would get an error - can't force unwrap an optional that doesn't contain a value
//let unwrappedYear = publicationYear!            // runtime error
//

// Method 2 - Optional Binding
// It is somewhat risky to compare a value to nil before attempting to use the contained value
// With optional binding, swift unwraps the optional and, if it contains a value, assigns the value
// to a constant that's safe to work with.

// if let constantName = someOptional {
    // constantName has been safely unwrapped for use within the braces
// }

if let unwrappedPublicationYear = unannouncedBook.publicationYear {
    print("The unannounced book was published in \(unwrappedPublicationYear).")
} else {
    print("The book does not have an official publcation date.")
}

// OPTIONALS AND FUNCTIONSs
let string = "123"                  // this String can be converted to an Int
let possibleNumber = Int(string)

let otherString = "Cynthia"         // but not this one
let otherNumber = Int(otherString)       // this will return nil

// If a String can be converted to an Int, it will hold the Int value. Otherwise it will hold nil. So Swift infers the result of
// an integer typecast (or any typecast) to be an optional

// EXAMPLE - Defining functions with optional parameters
func printFullName(firstName: String, middleName: String?, lastName: String) {
    // Optional binding to print a different string based on the presence of a middleName argument
    if let usersMiddleName = middleName {
        print("Your full name is \(firstName) \(usersMiddleName) \(lastName).")
    } else {
        print("Your full name is \(firstName) \(lastName).")
    }
}

printFullName(firstName: "Saad", middleName: "Mashkoor", lastName: "Siddiqui")
printFullName(firstName: "Saad", middleName: nil, lastName: "Siddiqui")


// EXAMPLE - Defining function with optional return types
import Foundation
func returnAnOptional() -> String? {
    var returnStr: String?
    let randomNumber = Int(arc4random_uniform(1))
    if randomNumber == 1 {
        returnStr = "This is a string returned by the method."
    }
    return returnStr
}

if let resultOfOptionalReturn = returnAnOptional() {
    print("The value returned by the optional was \(resultOfOptionalReturn)")
} else {
    print("No value was returned by the function.")
}


// Failable Initializers - initializers that may or may not return instances of the struct/class
struct Toddler {
    var name: String
    var monthsOld: Int
    
    // Failable initializer - May return nil or instance of Toddler if the toddler is < 12 months or > 36 months
    init?(name: String, monthsOld: Int) {
        if monthsOld < 12 || monthsOld > 36 {
            return nil
        } else {
            self.name = name
            self.monthsOld = monthsOld
        }
    }
}

// When handling failable initializers, should always use optional binding to safely unwrap the value
if let toddler = Toddler(name: "Joanna", monthsOld: 24) {
    print("\(toddler.name) is \(toddler.monthsOld) months old.")
} else {
    print("The age you specified for the toddler is not between 1 and 3 years of age.")
}

if let otherToddler = Toddler(name: "Tywin", monthsOld: 110) {
    print("\(otherToddler.name) is \(otherToddler.monthsOld) months old.")
} else {
    print("The age you specified for the toddler is not between 1 and 3 years of age.")
}


// OPTIONAL CHAINING - an optional object may have optional properties
// Example - every person must have an age and MAY have a residence. A residence MAY have an address. An address MAY have an apartment number.
class Person {
    var age: Int
    var residence: Residence?       // optional property
}

class Residence {
    var address: Address?           // optional property
}

class Address {
    var buildingNumber: String
    var streetName: String
    var apartmentNumber: String?
}

// Without optional chaining, would have to use nested optional binding - lots of code
if let theResidence = person.residence {
    if let theAddress = theResidence.address {
        if let theApartmentNumber = theAddress.apartmentNumber {
            print("He/she lives in apartment number \(theApartmentNumber).")
        }
    }
}

// Don't assign a name to every optional - conditional unwrapping with optional chaining
if let the ApartmentNumber = person.residence?.address?.apartmentNumber {
    print("He/she lives in apartment number \(theApartentNumber).")
}

// If a `nil` value breaks the chain at any point, the if-let statement fails.
// No value will then be assigned to the constant, and the code in the braces will never execute.
