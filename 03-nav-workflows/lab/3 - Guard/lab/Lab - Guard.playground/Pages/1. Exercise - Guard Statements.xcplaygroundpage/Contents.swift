import UIKit
/*:
 ## Exercise - Guard Statements

 Imagine you want to write a function to calculate the area of a rectangle. However, if you pass a negative number into the function, you don't want it to calculate a negative area. Create a function called `calculateArea` that takes two `Double` parameters, `x` and `y`, and returns an optional `Double`. Write a guard statement at the beginning of the function that verifies each of the parameters is greater than zero and returns `nil` if not. When the guard has succeeded, calculate the area by multiplying `x` and `y` together, then return the area. Call the function once with positive numbers and once with at least one negative number.
*/
func calculateArea(x: Double, y: Double) -> Double? {
    // Proceed only if both x and y are positive
    guard (x > 0 && y > 0) else { return nil }      // can return nil because return type is optional Double
    
    // Return area
    return x * y
}

/*:
 Create a function called `add` that takes two optional integers as parameters and returns an optional integer. You should use one `guard` statement to unwrap both optional parameters, returning `nil` in the `guard` body if one or both of the parameters doesn't have a value. If both parameters can successfully be unwrapped, return their sum. Call the function once with non-`nil` numbers and once with at least one parameter being `nil`.
 */
func add(_ num1: Int?, _ num2: Int?) -> Int? {
    // First check that the two optional integer params can be safely unwrapped to get Ints, otherwise return nil
    // Can return nil because the return type is an optional
    guard let firstNum = num1, let secondNum = num2 else { return nil }
    
    // If the two numbers are defined
    return firstNum + secondNum
}

print(add(10, 20)!)
print(add(10, nil))
print(add(nil, 20))
print(add(nil, nil))

/*:
 When working with UIKit objects, you will occasionally need to unwrap optionals to handle user input. For example, the text fields initialized below have `text` properties that are of type `String?`. 
 
 Write a function below the given code called `createUser` that takes no parameters and returns an optional `User` object. Write a guard statement at the beginning of the function that unwraps the values of each text field's `text` property, and returns `nil` if not all values are successfully unwrapped. After the guard statement, use the unwrapped values to create and return and instance of `User`.
 */
struct User {
    var firstName: String
    var lastName: String
    var age: String
}

let firstNameTextField = UITextField()
let lastNameTextField = UITextField()
let ageTextField = UITextField()

firstNameTextField.text = "Jonathan"
lastNameTextField.text = "Sanders"
ageTextField.text = "28"


func createUser() -> User? {
    // First check that the optional Strings in the `text` property of all three TextFields can be unwrapped
    guard let firstName = firstNameTextField.text, let lastName = lastNameTextField.text, let age = ageTextField.text else {
        return nil
    }
    
    // Use the unwrapped values to create an instance of User and return it
    return User(firstName: firstName, lastName: lastName, age: age)
}
/*:
 Call the function you made above and capture the return value. Unwrap the `User` with standard optional binding and print a statement using each of its properties. 
 */
if let newUser = createUser() {
    print("First name: \(newUser.firstName)\nLast name: \(newUser.lastName)\nAge: \(newUser.age)")
} else {
    print("There was a problem creating the new user.")
}

//: page 1 of 2  |  [Next: App Exercise - Guard](@next)
