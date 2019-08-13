import UIKit
var str = "Hello, playground"

// If-else statement
let temperature = 100
if temperature > 100 {
    print("The water is boiling.")
} else {
    print("The water is not boiling")
}

// if-else if-else
var finishPosition = 2
if finishPosition == 1 {
    print("Congratulations, you won the gold medal!")
} else if finishPosition == 2 {
    print("You came in second place, you won a silver medal!")
} else {
    print("You did not win a gold or silver medal.")
}

// Boolean values
let number = 1_000
let isSmallNumer = number < 10      // false

let speedLimit = 65
let currentSpeed = 72
let isSpeeding = currentSpeed > speedLimit  // true

// Logical not
var isSnowing = false
if !isSnowing {
    print("It is not snowing.")
}

// Logical AND
let temperature_2 = 70
if temperature_2 >= 65 && temperature_2 <= 75 {
    print("The temperature is just right.")
} else if temperature < 65 {
    print("It is too cold.")
} else {
    print("It is too hot")
}

// logical OR
var isPluggedIn = false
var hasBatteryPower = true

if isPluggedIn || hasBatteryPower {
    print("You can use your laptop.")
} else {
    print("😱")
}

// Switch statement
let numberOfWheels = 2
switch numberOfWheels {
case 1:
    print("Unicycle")
case 2:
    print("Bicycle")
case 3:
    print("Tricycle")
case 4:
    print("Quadcycle")
default:
    print("That's a lot of wheels!")
}

// Using a case to evaluate multiple conditions
let character = "z"
switch character {
// multiple vowels can be evaluated using the same case statement
case "a", "e", "i", "o", "u":
    print("This character is a vowel.")
default:
    print("This character is a consonant.")
}

// Using switch operator with ranges
let distance = 155;
switch distance {
case 0...9:
    print("Your destination is close.")
case 10...99:
    print("Your destination is a medium distance from here.")
case 100...999:
    print("Your destination is far from here.")
default:
    print("Are you sure you want to travel this far?")
}

// Ternary Operator
var largest: Int
let a = 15
let b = 4

// Conventional if-else block
if a > 5 {
    largest = a
} else {
    largest = b
}

// Make code more concise with the ternary operator
largest = a > b ? a : b

// Is a > b? If yes, largest = a. Otherwise, largest = b.
// Commonly used in if-else blocks that evaluate a condition and assign a value to a variable.

// REVIEW QUESTIONS
/*let cookies  = [Cookie(.chocolate), Cookie(.peanutButter), Cookie(.blackAndWhite)]

let mood = cookies.count() > 2 ? 😃 : 😔
 */
