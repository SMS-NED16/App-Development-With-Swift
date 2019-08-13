import UIKit

// ARRAYS - an ordered list of objects or variables of the same type
var names: [String] = ["Anne", "Gary", "Keith"]

// Type inference means we don't have to specify the type of the data in the array
var moreNames = ["Saad", "Mashkoor", "Siddiqui"]

// Type annotation becomes compulsory when we want to limit a variable to a specific subtype
// Such as limiting whole numbers to 8Bit integers instead of 32Bit of 64Bit integers
var numbers = [1, -3, 50, 72, -95, 115]     // not restricted to -127 to 128
var smallerNumbers: [Int8] = [1, -3, 50, 72, -95, 115]       // restricted to -127 to 128

// Can add 300 to numbers but not to smallerNumbers because of type annotation limiting range
numbers.append(300); print(numbers)         // no error
// smallerNumbers.append(300);                 // error - Swift does not allow this because 300 cannot be stored as an 8 bit integer

// CONTAINS - check whether a given array contains as specific value
let myNumbers = [4, 5, 6]
if myNumbers.contains(5) {
    print("The array contains 5.")
}

// MUTABILITY OF AN ARRAY
var mutableArray = [1, 2, 3, 4, 5]
let immutableArray = [1, 2, 3, 4, 5]

// Can add, remove, and modify elements in a mutable array
mutableArray.append(6)                  // add an element to the end of the array
mutableArray.remove(at: 0)              // remove the element at index 0
mutableArray[3] = 10                    // modify a specific element
print(mutableArray)
mutableArray = [1, 3, 5, 7, 9]          // can even reassign to an entirely new Array of values
print(mutableArray)

// Not the case for immutable arrays
//immutableArray.append(6)                // error
//immutableArray.remove(at: 0)            // error
// immutableArray[3] = 10                 // error
// immutableArray = [1, 3, 5, 7, 9]          // cannot assign a new array either

// Creating empty arrays of a specific type
// Type annotation
var myArray: [Int] = []

// Collection type annotation
var myOtherArray: Array<Int> = []

// Array Initializer
var anotherArray = [Int]()

// INITIALIZING AN ARRAY WITH PREDEFINED NUMBER OF SPECIFIC VALUES
var myNewArray = [Int](repeating: 0, count: 100)    // array filled with 100 zeroes

// Checking number of elements in the array
let arrayCount = myNewArray.count
print(arrayCount)

// Checking if an array is empty and executing some code
if myNewArray.isEmpty {
    print("The array is empty")
} else {
    print("The array is not empty.")
}

// INDEXING ARRAYS
let firstName = names[0]            // getting value at the 0th index
names[1] = "Sugoi"                  // setting value at the 1st index
print(names)

var evenMoreNames: [String] = ["Amy"]
evenMoreNames.append("Joe")

// Inserting elements at a specific index
evenMoreNames.insert("Bob", at: 0)
print(evenMoreNames)

// Removing elements at a specific index
var someMoreNames = ["Amy", "Brad", "Chelsea", "Dan"]
print(someMoreNames)

let chelsea = someMoreNames.remove(at: 2)
print(someMoreNames)

let dan = names.removeLast()
print(someMoreNames)

names.removeAll()
print(someMoreNames)

// Concatenating arrays
var firstArray = [1, 2, 3]
var secondArray = [4, 5, 6]
var myNewerArray = firstArray + secondArray
print(myNewerArray)

// Nested arrays
let containerArray = [firstArray, secondArray]                  // not concatenation
let firstNestedArray = containerArray[0]                        // [1, 2, 3]
let secondNestedArray = containerArray[1]                       // [4, 5, 6]
let firstElemmentOfFirstNestedArray = containerArray[0][0]      // 1

// DICTIONARIES
// Creating dictionaries with literals of key-value pairs of the same types
var scores = ["Richard": 500, "Luke": 400, "Cheryl": 800]

// Creating dictionaries with dictionary initializer - empty dict
var myDictionary = [String: Int]()                              // One type of initializer
var myOtherDictonary = Dictionary<String, Int>()                // Dictionary Initializer
var yetAnotherDictionary: [String: Int] = [:]                   // empty dictionary with type annotation

// Modifying dictionaries - just create a new key and assign it a value
scores["Oli"] = 399         // creates a new key names "Oli" and assigns it a value of 399

// UpdateValue - check if there is an old value for a specified key, return it, and replace it with new value
let oldValue = scores.updateValue(300, forKey: "Richard")
print(oldValue)             // previous value of richard's score - 500

// If there was no value for the specified key, the method returns nil
let anotherOldValue = scores.updateValue(900, forKey: "Branson")
print(anotherOldValue)      // nil

// Can use the if-let syntax to run code only if the updateValue method returns a value
if let yetAnotherOldValue = scores.updateValue(100, forKey: "Richard") {
    print("Richard's old value was \(oldValue).")
}

if let oldValueAgain = scores.updateValue(100, forKey: "Sadboi") {
    print("Sadboi's old value was \(oldValue).")                // will not execute
}


// Remove a key-value pair from a dictionary using the `removeValue` method or setting value for that key to nil
var myScores = ["Richard": 100, "Luke": 400, "Cheryl": 800]
myScores["Richard"] = nil     //
print(myScores)

if let removedValue = myScores.removeValue(forKey: "Cheryl") {
    print("Cheryl's old score was \(oldValue) before she stopped playing.")
}
print(myScores)

// Accessing dictionaries
// Can access all keys and values of a dictionary and cast them to an array
var gameScores = ["Richard": 500, "Luke": 400, "Cheryl": 800]
let playerNames = Array(gameScores.keys)
let playerScores = Array(gameScores.values)
print(playerNames)
print(playerScores)

// To look up a particular value in the dictionary, use the if-let syntax
if let myAccessedScore = scores["Luke"] {
    print(myAccessedScore)      // executed -> "Luke" is a key in the dictionary
}

if let myOtherScore = scores["Henry"] {
    print(myOtherScore)         // not executed -> "Henry" is not a key in the dictionary
}
