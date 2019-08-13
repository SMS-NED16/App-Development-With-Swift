import UIKit

// A simple function that prints pi - no params, no return type
func displayPi() {
    print("3.1415926353")
}

// Calling the function
displayPi()

// Defining parameters
// A function that accepts a single Integer parameter, triples it, and prints to console
// Still no return type
func triple(value: Int) {
    let result = value * 3
    print("If multiply \(value) by 3, you get \(result).")
}

triple(value: 10)

// Multiple parameters
func multiply(firstNumber: Int, secondNumber: Int) {
    let result = firstNumber * secondNumber
    print("The product of \(firstNumber) and \(secondNumber) is \(result).")
}

multiply(firstNumber: 10, secondNumber: 30)

// Argument labels
// It is not necessary for the name of the argument in the parameter list to be the same as the name of the argument
// in the function's implementation. Usually, we will define verbose, descriptive parameter names in the parameter list
// function declaration, but in the implementation we use a shorthand for the same parameter to keep things readable
// This is achieved with argument labels
// EXAMPLE - same external and internal name for argument
func sayHello(firstName: String) {
    print("Hello, \(firstName).")
}

sayHello(firstName: "Saad")

// Suppose we wanted the function declaration to read more clearly
func sayHelloAgain(to: String, from: String) {
    print("Hello \(to), I am \(from).")         // poor variable names!
}

sayHelloAgain(to: "Saad", from: "Mashkoor")

// Defining argument labels that can be used in the function definition
func sayHello(to person: String, and anotherPerson: String) {
    print("Hello, \(person) and \(anotherPerson).")
}

// Can still use the `to` and `from` parameter labels in the function call
sayHello(to: "Miles", and: "Riley")

// Sometimes it makes sense to omit the argument label
print("Hello, world!")          // no argument label needed - self-explanatory function call

// Omit parameter names in the function call using
func simpleSayHello(_ person: String, _ anotherPerson: String) {
    print("Hello \(person). I am \(anotherPerson).")
}
simpleSayHello("Luke", "Dave")

// Default parameter values
func display(teamName: String, score: Int = 0) {    // default value of score is 0
    print("\(teamName): \(score)")
}
display(teamName: "Wombats", score: 100)            // Wombats: 100
display(teamName: "Wombats")                        // Wombats: 0 - because using default parameter

// Return values
func getProduct(_ num1: Int, _ num2: Int) -> Int {
    print("Multiplying \(num1) and \(num2).")
    return num1 * num2
}

let product = getProduct(10, 20)
print(product)

// Also possible to nest function calls
print(getProduct(10, 20))

// A function that returns multiple values
func getQuotientAndRemainder(_ num1: Int, _ num2: Int) -> (Int, Int) {
    let quotient = num1 / num2
    let remainder = num1 % num2
    return (quotient, remainder)
}

// Returns two values as a tuple - stored in myQuotient and myRemainder
let (myQuotient, myRemainder) = getQuotientAndRemainder(22, 12)
print(myQuotient)
print(myRemainder)


