/*:
 ## Exercise - Types and Type Safety
 
 Declare two variables, one called `firstDecimal` and one called `secondDecimal`. Both should have decimal values. Look at both of their types by holding Option and clicking on the variable name.
 */
var firstDecimal = 1.25         // Inferred type is Double
var secondDecimal = 3.14        // Inferred type is Double
/*:
 Declare a variable called `trueOrFalse` and give it a boolean value. Try to assign it to `firstDecimal` like so: `firstDecimal = trueOrFalse`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
 */
var trueOrFalse: Bool
// trueOrFalse = firstDecimal          // this will not compile
// The line will not compile because `firstDecimal` has been created as a variable of type Double through type inference.
// As trueOrFalse is a boolean variable, it cannot be used to store a Double value
/*:
 Declare a variable and give it a string value. Then try to assign it to `firstDecimal`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
 */
var myString: String = "This is a string"
// firstDecimal = myString     // will not compile
// Cannot assign a String literal to a variable of type Double
/*:
 Finally, declare a variable with a whole number value. Then try to assign it to `firstDecimal`. Why won't this compile even though both variables are numbers? Print a statement to the console explaining why not, and remove the line of code that will not compile.
 */
var myWholeNumber: Int = 12
// firstDecimal = myWholeNumber         // will not compile
// Again, even though a whole number is technically a number just like Double, it is a different data type
// Because of Swift's type safety rules, we cannot assign a non-floating-point value to a variable of type Double
// Although the non-floating point value can still be cast to a floating point one
//: [Previous](@previous)  |  page 7 of 10  |  [Next: App Exercise - Tracking Different Types](@next)
