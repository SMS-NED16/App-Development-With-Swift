import UIKit
/*:
 ## App Exercise - Guard
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 In the exercises on optionals, you created a failable initializer for a `Workout` struct that would only initialize a `Workout` object if the `startTime` and `endTime` were further apart than 10 seconds. You'll now create the same failable initializer, only using a guard statement to check that the start and end times aren't too close together.
 
 Create a `Workout` struct that has properties `startTime` and `endTime` of type `Double`. Dates are difficult to work with, so you'll be using doubles to represent the number of seconds since midnight, i.e. 28800 would represent 28,800 seconds, which is exactly 8 hours, so the time would be 8am.
 
 Write a failable initializer that takes parameters for your start and end times, and then checks to see if they are greater than 10 seconds apart using a guard statement. If they are, your initializer should fail. Otherwise, the initializer should set the properties accordingly.
 */
struct Workout {
    let startTime: Double       // represented as number of seconds since midnight
    let endTime: Double         // represented as numebr of seconds since midnight
    
    init?(start t_start: Double, end t_end: Double){
        // Guard condition to check that the two times are at least 10 seconds apart
        guard (t_end - t_start > 10) else {
            return nil
        }
        
        // If the two times are 10 seconds apart, initialize
        startTime = t_start
        endTime = t_end
    }
}

let newWorkout = Workout(start: 1, end: 100)
print(newWorkout!)
let notAWorkout = Workout(start: 1, end: 8)
print(notAWorkout)

/*:
 Imagine a screen where a user inputs a meal that they've eaten. If the user taps a "save" button without adding any food, you might want to prompt the user that they haven't actually added anything.
 
 Using the `Food` struct and the text fields provided below, create a function called `logFood` that takes no parameters and returns an optional `Food` object. Inside the body of the function, use a guard statement to unwrap the `text` property of `foodTextField` and `caloriesTextField`. In addition to unwrapping `caloriesTextField`, you'll need to create and unwrap a new variable that initializes an `Int` from the text in `caloriesTextField`. If any of this fails, return `nil`. After the guard statement, create and return a `Food` object.
 */
struct Food {
    var name: String
    var calories: Int
}

let foodTextField = UITextField()
let caloriesTextField = UITextField()

foodTextField.text = "Banana"
caloriesTextField.text = "23"

func logFood() -> Food? {
    // Guard 1 - Unwrap the text field inputs as Strings
    guard let foodText = foodTextField.text, let caloriesText = caloriesTextField.text else { return nil }
    
    print(foodText)
    print(caloriesText)
    
    // Guard 2 - Storing the caloriesText as an Int
    guard let calories = Int(caloriesText) else {
        print("Cannot read calories as an integer.")
        return nil
    }
    
    // If both guard conditions cleared, instantiate a new object and return it
    let newFood = Food(name: foodText, calories: calories)
    return newFood
}
/*:
 Call the function you made above and capture the return value. Unwrap the `Food` object with standard optional binding and print a statement about the food using each of its properties. Go back and change the text in `caloriesTextField` to a string that cannot be converted into a number. What happens in that case?
 */
if let newFood = logFood() {
    print("The name of the food is \(newFood.name) and its calories are \(newFood.calories).")
} else {
    print("The food was not instantiated properly. Try logging again.")
}

/*:
 
 _Copyright © 2017 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//: [Previous](@previous)  |  page 2 of 2
