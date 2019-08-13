/*:
 ## Exercise - Constants
 
 Declare a constant called `friends` to represent the number of friends you have on social media. Give it a value between 50 and 1000. Print out the value by referencing your constant.
 */
let friends = 100
print("The number of friends I have on social media: " + String(friends))
/*:
 Now assume you go through and remove friends that aren't active on social media. Update your `friends` constant to a lower number than it currently is.
 */
// friends = 55     // will not compile and will cause an error - trying to reassign to a constant

/*:
 Does the above code compile? Why not? Print your explanation to the console using the `print` function. Go back and delete your line of code that updates the `friend` constant to a lower number so that the playground will compile properly.
 */
/*The code does not compile because the `friends` was declared with the `let` keyword and was thus a constant. Constants are immutable - once initialized
 their value cannot be changed i.e. we cannot reassign a value to a constant. This is one of Swift's many features to ensure code is safe and doesn't
 accidentally change the vaulue of the variable.
 */
var myFriends = 100
print("The number of friends I have on social media: " + String(myFriends))

// Removing 5 friends
myFriends -= 5

print("After removing some friends, remaining friends are: " + String(myFriends))
//: page 1 of 10  |  [Next: App Exercise - Step Goal](@next)
