/*:
 ## App Exercise - Fitness Tracker: Constant or Variable?
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 There are all sorts of things that a fitness tracking app needs to keep track of in order to display the right information to the user. Similar to the last exercise, declare either a constant or a variable for each of the following items, and assign each a sensible value. Be sure to use proper naming conventions.
 
 - Name: The user's name
 - Age: The user's age
 - Number of steps taken today: The number of steps that a user has taken today
 - Goal number of steps: The user's goal for number of steps to take each day
 - Average heart rate: The user's average heart rate over the last 24 hours
 */
let userName: String = "Saad Siddiqui"
print("The user's name won't change during a single lifecycle of the app, so it is a constant.")

var age: Int = 23
print("The user's age may change with time, so this should be a variable. It could also be a" +
" constant assuming that the user's age does not change within a single lifecycle of the app.")

var numberOfStepsToday: Int = 10_000
print("The number of steps taken by the user will increase during the day.")

let goalNumberOfSteps: Int = 6_000
print("The goal number of steps is less likely to change for a given day or during a single lifecycle.")

var averageHeartRate: Float = 65.0
print("The average heart rate will obviously fluctuate during the day and so should be a variable.")
/*:
 Now go back and add a line after each constant or variable declaration. On those lines, print a statement explaining why you chose to declare the piece of information as a constant or variable.
 */
//: [Previous](@previous)  |  page 6 of 10  |  [Next: Exercise - Types and Type Safety](@next)
