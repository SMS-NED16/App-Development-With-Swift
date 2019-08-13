import UIKit

// GLOBAL SCOPE
var age = 55                                    // global scope
func printMyAge() {                             // not defined inside a control flow structure, so also global scope
    print("My age: \(age).")
}
print(age)                                      // accessible directly
printMyAge()                                    // accessible in the function as well

// LOCAL SCOPE
func printBottleCount() {
    let bottleCount = 99
    print(bottleCount)
}

printBottleCount()                              // 99 - function is defined in global scope, so can be called anywhere
// print(bottleCount)                           // error - cannot access bottleCount variable because it was declared in the local scope

//
func printTenNames() {
    let name = "Grey"                           // local scope for this function
    for index in 1...10 {                       // `index` is defined in the scope of the for loop only, so cannot be accessed outside of it
        print("\(index): \(name).")             // the `name` variable is also accessible in the for loop
    }
    print(index)                                // This is a UIKit function, not the `index` variable - that variable is inaccessible outside the for loop
    print(name)
}
printTenNames()

// VARIABLE SHADOWING
func printComplexScope() {
    var points = 100                            // `points` is defined in the local scope for this function
    print(points)                               // 1000
    
    for index in 1...3 {
        var points = 200                        // redefined here in the local scope for the `for` block
        print("Loop \(index): \(points + index).")      // the for loops `point` takes precedence
    }
    
    print(points)                               // this will still refer to the function's `points` because the `for point` is inaccessible
}
printComplexScope()

// This is an example of variable shadowing - when a variable in a nested scope replaces all references to a similarly named variable in outer scope

// USE CASES FOR VARIABLE SHADOWING
var name: String? = "Brady"

// Instead of coming up with a new name for the `name` variable in the `if let` scope, we can use
// variable shadowing to use the same `name` identifier in the `if-let` scope
if let name = name {
    // name is a local `String` that shadows the global `String?` of the same name
    print("My name is \(name).")
}

// SIMPLIFYING UNWRAPPED OPTIONALS FROM A GUARD STATEMENT
func exclaim(name: String?) {
    if let name = name {
        // Inside the braces, `name` is an unwrapped `String` value
        print("Exclaim function was passed: \(name).")
    }
}

func exclaimGuard(name: String?) {
    // `name` on the RHS refers to the `name` String? passed as anargument
    // `name` on the LHS refers to the String that is stored after unwrapping the optional
    guard let name = name else { return }
    // The optional? `String?` is no longer accessible, only the `String` that was unwrapped
    print("Exclaim function was passed: \(name).")
}


// SHADOWING AND INITIALIZERS
struct Person {
    var name: String
    var age: Int
    
    // `name` and `age` defined in the parameters of the function are in the function scope
    // not the local scope of the `Person`, so we can easily use the same identifiers as parameters
    // To explicitly refer to the properties, use `self.` notation
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let tim = Person(name: "Tim", age: 35)
