import UIKit
var str = "Hello, playground"

let greeting = "Hello"
var otherGreeting = "Salutations"

// Multiline string
let joke = """
Q: Why did the chicken cross the road?
A: To get to the other side.
"""
print(joke)

// Multiline strings will also print any and all whitespace
let newStr = """
    This is a multiline string with whitespace.
    Notice how it doesn't print from the edge of the console window.
"""
print(newStr)

// By aligning the closing triple quotes, we can tell Swift what whitespace to ignore in previous lines
let newerStr = """
    This is also a multiline string that originally had whitespace.
    But the alignment of closing triple quotes has stripped both lines
    of the prefix whitespace.
    """     // number of spaces before closing quote - number of whitespace chars to ignore in each previous line
print(newerStr)

// Including double quotes in strings
let myGreeting = "It is traditional in programming to print \"Hello, world\""
print(myGreeting)

// Checking if a string is empty
var myString = ""
if myString.isEmpty {
    print("The string is empty.")
}

// Swift will always infer the type of a collection of characters to be a string since strings are more common than chars
let a = "a";        // Actually a character but will be inferred as string
let b: Character = "b"      // Use type annotation to prevent inference

// Concatenation
let string1 = "Hello"
let string2 = ", world!"
let myConcatenatedString = string1 + string2            // Hello, world!
print(myConcatenatedString)

// Using the compound assignment operator for concatenation
var myNewString = "Hello"                               // Hello
myNewString = myNewString + ", world!"                  // Hello, world!
myNewString += "Hello!"                                 // Hello, world! Hello!

// String interpolation - cleaner syntax modifying strings
let name = "Rick"
let age = 30
print("\(name) is \(age) years old!")           // Rick is 30 years old

// Using parentheses to ensure an expression is evaluated before interpolation
let a1 = 4
let b1 = 5
print("If a is \(a1) and b1 is \(b) then a + b = \(a1 + b1)")

// String equality and comparison
let month = "January"
let otherMonth = "January"
let lowercaseMonth = "january"

if month == otherMonth {
    print("They are the same.")
}

if month != lowercaseMonth {
    print("They are not the same!")
}

// Ignoring capitalization when checking for strings - convert all letters to lowercase
let testName = "John Appleseed"
if testName.lowercased() == "jOhn aPPleSEeD".lowercased() {
    print("The two names are equal.")
}

// Matching the beginning or end of the string using hasPrefix and hasSuffix methods
let testGreeting = "Hello, world!"
print(testGreeting.hasPrefix("Hello"))              // true
print(testGreeting.hasSuffix("world!"))             // true - why is this false - because I was referencing the wrong variable
print(testGreeting.hasSuffix("World!"))             // false

// Checking if one string is substring of another
let anotherGreeting = "Hi, Rick. My name is Amy."
if anotherGreeting.contains("My name is") {
    print("Making an introduction.")
}

// String length - the number of characters in a string
let myName = "Saad Mashkoor Siddiqui"
let count = myName.count                        // 10

let newPassword = "1234"

if newPassword.count < 8 {
    print("This password is too short. Passwords should have at least eight characters.")
}

// Switch statements with strings for cases
let someCharacter: Character = "e"
switch someCharacter {
case "a", "e", "i", "o", "u":
    print("\(someCharacter) is a vowel.")
default:
    print("\(someCharacter) is a consonant.")
}

// Unicode symbols
let cow = "🐮"
let credentials = "résumé"
print("∞".count)          // 1
