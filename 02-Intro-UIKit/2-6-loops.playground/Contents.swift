import UIKit

// For loop using range and for-in syntax
for index in 1...5 {
    print(index)
}

// If the loop doesn't need to access or use the value in the range
for _ in 1...5 {
    print("This message was printed without needing a counter variable.")
}

// Iterating over an array
let names = ["Joseph", "Cathy", "Winston"]
for name in names {
    print("Hello, \(name)!")
}

// Could use a for loop to iterate over all the characters in a string
for letter in "ABCD" {      // .characters made obsolete in Swift 5
    print("The lowercased version of the letter is \(letter.lowercased())")
}

// Can also access the index of each element in an array within a for loop using enumerated()
// Enumerated reutnrs a dictionary-like structure in which the key is the index and the element is the value
for (index, letter) in "ABCD".enumerated() {
    print("\(index): \(letter).")
}

// Using a for-loop to iterate through the keys and values of a dictionary
// This is not an ordered iteration
let vehicles = ["unicycle": 1, "bicycle": 2, "tricycle": 3, "quad bike": 4]
for (vehicleName, wheelCount) in vehicles {                 // not enumerated, but still accessing keys and values separately
    print("A \(vehicleName) has \(wheelCount) \( wheelCount > 1 ? "wheels" : "wheel")")
}

// While loops - will check the condition before executing loop; body must always modify the sentinel value for the conditional
var numberOfLives = 3
var stillAlive = true
while stillAlive {
    numberOfLives -= 1
    print("Lives remaining: \(numberOfLives).")
    if numberOfLives == 0 {
        stillAlive = false      // changes loop condition
    }
}

// Control transfer statements
for counter in -3...3 {
    print(counter)
    if counter == 0 {
        break
    }
}
