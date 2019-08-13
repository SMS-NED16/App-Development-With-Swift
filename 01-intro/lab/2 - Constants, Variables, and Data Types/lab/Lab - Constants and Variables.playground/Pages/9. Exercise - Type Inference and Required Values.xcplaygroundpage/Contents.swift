/*:
 ## Exercise - Type Inference and Required Values
 
 Declare a variable called `name` of type `String`, but do not give it a value. Print `name` to the console. Does the code compile? Remove any code that will not compile.
 */
var name: String
// print(name)             // will not compile - cannot access a value that has not been defined
/*:
 Now assign a value to `name`, and print it to the console.
 */
name = "Saad Mashkoor Siddiqui"
print(name)
/*:
 Declare a variable called `distanceTraveled` and set it to 0. Do not give it an explicit type.
 */
var distanceTravelled = 0       // not using type annotation
print(distanceTravelled)
/*:
 Now assign a value of 54.3 to `distanceTraveled`. Does the code compile? Go back and set an explicit type on `distanceTraveled` so the code will compile.
 */
// distanceTravelled = 54.3    // will not compile because distanceTravelled inferred type is Int, not Double
var distanceTravelledFloat: Double
distanceTravelledFloat = 54.3
//: [Previous](@previous)  |  page 9 of 10  |  [Next: App Exercise - Percent Completed](@next)
