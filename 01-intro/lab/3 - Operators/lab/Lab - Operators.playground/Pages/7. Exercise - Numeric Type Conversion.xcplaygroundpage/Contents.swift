/*:
 ## Exercise - Numeric Type Conversion

 Create an integer constant `x` with a value of 10, and a double constant `y` with a value of 3.2. Create a constant `multipliedAsIntegers` equal to `x` times `y`. Does this compile? If not, fix it by converting your `Double` to an `Int` in the mathematical expression. Print the result.
 */
let x: Int = 10
let y: Double = 3.2
// let multipledAsIntegers = x * y      // will not compile
// Cannot multiply an integer with a double
let multipliedAsIntegers = x * Int(y)
print(multipliedAsIntegers)
/*:
 Create a constant `multipliedAsDoubles` equal to `x` times `y`, but this time convert the `Int` to a `Double` in the expression. Print the result.
 */
let multipledAsDoubles = Double(x) * y
print(multipledAsDoubles)
/*:
 Are the values of `multipliedAsIntegers` and `multipliedAsDoubles` different? Print a statement to the console explaining why.
 */
print("Values of `multipliedAsIntegers` and `multipliedAsDoubles` are not the same. When casted to an `Int`,  `y` becomes 3 so the product is 3 x 10 = 30.")
print("However, when `multipliedAsDoubles` is used, the `Int` 10 is cast to 10.0, which yields 10.0 x 32.0 = 320.0")

//: [Previous](@previous)  |  page 7 of 8  |  [Next: App Exercise - Converting Types](@next)
