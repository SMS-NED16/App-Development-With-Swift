import UIKit

// Complex apps will oftne require multiple conditions to be true before a function can be executed. Implementing this with nested if-statements
// does not make for readable code or code that is easy to understand and debug.

func singHappyBirthday() {
    if birthdayIsToday {
        if invitedGuests > 0 {
            if cakeCandlesLit {
                print("Happy Birthday tod you!")
            } else {
                print("The cake's candles haven't been lit.")
            }
        } else {
            print("It's just a family party.")
        }
    } else {
        print("No one has a birthday today.")
    }
}

// Each if statement moves farther and farther from the beginning of the line, making code difficult to read
// Each else statement moves farther and farther from its corresponding if statement - difficult to tell how they match up

// The same code becomes more readable when we use `guard` to extract the successful code (code that executes when all conditions true)
// All three guard conditions must evaluate to true before the happy birthday message can be printed
func singHappyBirthdayAgain() {
    guard birthdayIsToday else {
        print("No one has a birthday today.")
    }
    
    guard invitedGuests > 0 else {
        print("It's just a family party.")
    }
    
    guard cakeCandlesLit else {
        print("The cakes' candles haven't been lit.")
    }
    
    // This code will run only if all three guard conditions evaluate to true
    print("Happy birthday to you!")
}


// Can use guard to make a function return early if any of its requisites are not met
func divide(_ number: Double, by divisor: Double) {
    if divisor != 0.0 {
        let result = number / divisor
        print(result)
    }
}

// Rewriting the same function with a guard statement
func divideGuard(_ number: Double, by divisor: Double) {
    guard divisor != 0.0 else { return }
    
    let result = number / divisor
    print(result)
}

// Guards and Optionals
// If goose.eggs does not return nil, store the value in eggs. But `eggs` will be undefined outside the block
if let eggs = goose.eggs {
    print("The goose laid ]\(eggs.count) eggs.")
}       // `eggs` is not accessible outside the optional binding block

// Instead, we can use the `guard let` statement that makes the variable accessible outside the block too

guard let eggs = goose.eggs else { return }
//  `eggs` is still accessible
print("The goose laid \(eggs.count) eggs.")


// Unwrapping multiple optionals simultaneously
func processBook(title: String?, price: Double?, pages: Int?) {
    // If even one of these optionals unwraps to return a nil, the code won' execute
    if let theTitle = title, let thePrice = price, let thePages = pages {
        print("\(theTitle) costs $\(thePrice) and has \(thepPages) pages.")
    }
}


// The same function implemented with guard
func processBookGuard(title: String?, price: Double?, pages: Int?) {
    guard let theTitle = title, let thePrice = price, let thePages = pages else { return }
    print("\(theTitle) costs $\(thePrice) and has \(thePages) pages.")
}
