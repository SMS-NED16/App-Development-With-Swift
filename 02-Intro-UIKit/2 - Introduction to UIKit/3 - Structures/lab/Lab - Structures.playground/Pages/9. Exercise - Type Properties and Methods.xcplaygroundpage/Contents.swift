/*:
 ## Exercise - Type Properties and Methods
 
 Imagine you have an app that requires the user to log in. You may have a `User` struct similar to that shown below. However, in addition to keeping track of specific user information, you might want to have a way of knowing who the current logged in user is. Create a `currentUser` type property on the `User` struct below and assign it to a `user` object representing you. Now you can access the current user through the `User` struct. Print out the properties of `currentUser`.
 */
struct User {
    // INSTANCE PROPERTIES
    var userName: String
    var email: String
    var age: Int
    
    // TYPE PROPERTIES
    static var currentUser: User = User(userName: "Saad Mashkoor Siddiqui", email: "saadsiddiqui.ned16@gmail.com", age: 23)
    
    // TYPE METHODS
    static func logIn(newUser: User) {
        currentUser = newUser
        print("\(currentUser.userName) logged in.")
    }
}

// Creating a new user
var myUser = User(userName: "Billy Bob", email: "billy.bob@thornton.com", age: 63)

// Accessing the currentUser property through the newly created user
print(User.currentUser)
/*:
 There are other properties and actions associated with a `User` struct that might be good candidates for a type property or method. One might be a method for logging in. Go back and create a type method called `logIn(user:)` where `user` is of type `User`. In the body of the method, assign the passed in user to the `currentUser` property, and print out a statement using the user's userName saying that the user has logged in.
 
 Below, call the `logIn(user:)` method and pass in a different `User` instance than what you assigned to currentUser above. Observe the printout in the console.
 */
var newLoginUser = User(userName: "saad.siddiqui", email: "saad.siddiqui@saad.com", age: 23)
User.logIn(newUser: newLoginUser)

// Check that the current user has been updated
print(User.currentUser)

//: [Previous](@previous)  |  page 9 of 10  |  [Next: App Exercise - Type Properties and Methods](@next)
