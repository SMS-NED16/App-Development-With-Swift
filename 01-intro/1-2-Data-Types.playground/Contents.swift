import UIKit
var str = "Hello, playground"

// Use let to define values that won't change during the lifetime of a program
let name = "Saad"
print(name)

// Cannot reassign to name because it was declared with let
// name = "James"      // immutable - will cause error

// Use var to declare values that may change during the program's lifetime
var age = 29
print(age)          // 29

age = 30            // reassignment - no error, is allowed
print(age)          // 30 now

// Can assig constants and variables to other constants and variables
let defaultScore = 100
var playerOneScore = defaultScore
var playerTwoScore = defaultScore

print(playerOneScore)
print(playerTwoScore)

playerOneScore = 200
print(playerOneScore)

// Even though certain values might be variable, they should still be declared with let as constants because they won't change during a **single execution of the code**

// Valid and invalid variable names
let π = 3.14159
let 一百 = 100
let 🎲 = 6
let mañana = "Tomorrow"
let anzahlDerBücher = 15        // number of books

// Data Types
struct Person {
    let firstName: String
    let lastName: String
    
    func sayHello() {
        print("Hello there! My name is \(firstName) \(lastName).");
    }
}

let aPerson = Person(firstName: "Saad", lastName: "Mashkoor")
let anotherPerson = Person(firstName: "Candace", lastName: "Salinas")

aPerson.sayHello()
anotherPerson.sayHello()


// Type safety in Swift
let playerName = "Julian"       // inferred String
var playerScore = 1000          // inferred int
var gameOver = false            // inferred Bool

// Will be flagged for mismatched types, will not compile
// playerScore = playerName        // error!

// Using underscores with large numbers
var largeUglyNumber = 100000000000
var largePrettyNumber = 1_000_000_000

// Type Inference
let cityName = "San Francisco"
// "San Francisco" is obviously a `String`, so the compiler automatically assigns the type of cityName to a `String`

let pi = 3.1415927
// This is a number with decimal points, so the compiler automatically assigns the type `pi` to a `Double`

// Explicitly specifying the type of a variable/constant
let explicitCityName: String = "San Francisco"
let explicitPi: Double = 3.1415927

// When we use type annotation, Swift will automatically cast the literal to the appropriate data type if possible
let number: Double = 3
print(number)               // 3.0

// Common use cases for type annotation
// Created a variable but haven't assigned it a value
let firstName: String;

// Create a constant or variable that could be inferred as more than one type
let middleInitial: Character = "J"
// this could be interpreted as a String or a Char

var remainingDistance: Float = 30
// `30` would be inferred as an `Int` but the variable shoudl support decimal numbers for accuracy as the number decreases

// When we write our own type definition
struct Car {
    var make: String
    var model: String
    var year: Int
}

// Required values
// Must either specify value or use type annotation
// var x           // this will cause an error - no value to infer type from, and no annotation

// Even if the variable has been declared with a type, it will cause an error if accessed without assigning a value to it
var x2: Int
print(x2)

// Once the value is assigned, the constant/variable becomes available
var x3: Int
x3 = 10
print(x3)


// REVIEW QUESTION
let myNumber: Double = 3    // compiels
