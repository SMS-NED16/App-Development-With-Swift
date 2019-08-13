import UIKit

// Assignment operator
let favoritePerson = "Luke"     // declaration
var shoeSize = 9
shoeSize = 8                    // reassignment

// Basic arithmetic
var opponentScore = 3 * 8       // 24
var myScore = 100 / 4           // 25

// Using variables for arithmetic
var totalScore = opponentScore + myScore    // 49

// Referencing the current variable
myScore = myScore + 3           // update to 28

// Floating point operations
let totalDistance = 3.9
var distanceTraveled = 1.2
var remainingDistance = totalDistance - distanceTraveled

// Integer division
let x = 51
let y = 4
let z = x / y           // 12 - nearest integer

// Floating point division
let a: Double = 51
let b: Double = 4
let c = a / b           // 12.7

// Compound Assignment
var myNewScore = 10
myNewScore += 3         // 13

// More compound assignments
myNewScore += 3
myNewScore -= 5
myNewScore *= 2
myNewScore /= 2

// Order of operations
var x1 = 2
var y1 = 3
var z1 = 5
x + y * z               // 17
(x + y) * z             // 25 - use parentheses to override PEMDAS

// Numeric Type Conversion
let x3 = 3
let y3 = 0.1419527
// let pi = x3 + y3     // Compiler error - types mismatch

let pi = Double(x3) + y3    // 3.1415927

// REVIEW EXERCISES
let x4 = 2
let y4 = 4
let z4 = 6
let myNumber = x + y + z    // 12
let myOtherNumber = x + y * z   // 26
let anotherNumber = x * y - z   // 2
let yetAnotherNumber = (x + y) * z  // 36

let x5 = 14
let y5 = 2.5
// let resuult = x5 * y5     // error - Incompatible types
let result = Double(x5) * y5


