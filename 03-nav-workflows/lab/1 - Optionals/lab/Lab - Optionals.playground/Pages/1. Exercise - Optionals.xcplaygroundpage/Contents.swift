/*:
 ## Exercise - Optionals
 
  >Throughout the exercises in this playground, you will be printing optional values. The Swift compiler will display a warning: "Expression implicitly coerced from `Int?` to Any". For the purposes of these exercises, you can ignore this warning.

 Imagine you have an app that asks the user to enter his/her age using the keyboard. When your app allows a user the input text, what is captured for you is given as a `String`. However, you want to store this information as an `Int`. Is it possible for the user to make a mistake and for the input to not match the type you want to store?
 
 Declare a constant `userInputAge` of type `String` and assign it "34e" to simulate a typo while typing age. Then declare a constant `userAge` of type `Int` and use the `Int` initializer and pass in `userInputAge`. What error do you get?
*/
// Yes, it is possible for the expected input type not to be the same as the actual input type. This is because the actual input type
// will be obtained by casting a String to an Int, and the typecasting operation may not always yield an Int if the String does not have an equivalent
// numerical representation e.g. a non-numeric string or alphanumeric string
let userInputAge: String = "34e"            // typo
// let userAge: Int = Int(userInputAge)             // error - Cannot convert value of type `String` to specified type `Int`
/*:
 Go back and change the type of `userAge` to `Int?`, and print the value of `userAge`. Why is `userAge`'s value `nil`? Provide your answer in a comment or print statement below.
 */
let userAge: Int? = Int(userInputAge)      // no error - expects an Int, but is also prepared to accept a `nil` if the typecasting fails
print(userAge)                              // expect nil
// `userAge` is `nil` because there is no numeric representation of the String `34e`. So the `Int` typecast operation fails to convert the `userInputAge`
// String to an Integer, and returns `nil` - an undefined value. Because the `userAge` constant was initialized as an Optional Integer `Int?`, this
// means the `userAge` constant can store a `nil` value
/*:
 Now go back and fix the typo on the value of `userInputAge`. Is there anything about the value printed that seems off?
 
 Print `userAge` again, but this time unwrap `userAge` using the bang operator.
 */
let correctedUserAge: String = "34"
let newUserInputAge: Int? = Int(correctedUserAge)
print(newUserInputAge)          // Printed as `Optional(34)` instead of 34
print(newUserInputAge!)         // Unwrapping the optional to print the actual `Int` value
/*:
 Now use optional binding to unwrap `userAge`. If `userAge` has a value, print it to the console.
 */
// Using optional binding to unwrap user age
if let userAgeInYears = userAge {
    print("User's age is \(userAgeInYears).")
} else {
    print("User's age was an optional.")
}

//: page 1 of 6  |  [Next: App Exercise - Finding a Heart Rate](@next)
