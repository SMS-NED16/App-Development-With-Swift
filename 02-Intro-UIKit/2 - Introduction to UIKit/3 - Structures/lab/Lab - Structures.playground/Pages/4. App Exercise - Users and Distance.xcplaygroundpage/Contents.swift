/*:
 ## App Exercise - Users and Distance
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 For most apps you'll need to have a data structure to hold information about a user. Create a `User` struct that has properties for basic information about a user. At a minimum, it should have properties to represent a user's name, age, height, weight, and activity level. You could do this by having `name` be a `String`, `age` be an `Int`, `height` and `weight` be of type `Double`, and `activityLevel` be an `Int` that will represent a scoring 1-10 of how active they are. Implement this now.
 */
struct User {
    // INSTANCE PROPERTIES
    var name: String
    var age: Int
    var height: Double
    var weight: Double
    var activityLevel: Int          // 1 - 10, 1 being least active and 10 being most active
    
    // INSTANCE METHODS
    // toString
    func toString() -> String {
        return "\(name)\n\(age)\n\(height)\n\(weight)\n\(activityLevel)"
    }
}

/*:
 Create a variable instance of `User` and call it your name. Use the memberwise initializer to pass in information about yourself. Then print out a description of your `User` instance using the instance's properties.
 */
var myUser = User(name: "Saad", age: 23, height: 164, weight: 75, activityLevel: 3)
print(myUser.toString())

/*:
 In previous app exercises, you've worked with distance in the fitness tracking app example as a simple number. However, distance can be represented using a variety of units of measurement. Create a `Distance` struct that will represent distance in various units of measurement. At a minimum, it should have a `meters` property and a `feet` property. Create a custom initializer corresponding to each property (i.e. if you only have the two properties for meters and feet you will then have two initializers) that will take in a distance in one unit of measurement and assign the correct value to both units of measurements. Hint: *1 meter = 3.28084 feet*.
 
 - Example: If you use the initializer for meters and pass in a distance of 1600, the initializer should set `meters` to 1600 and `feet` to 5249.344.
 */
struct Distance {
    // STATIC TYPE PROPERTIES
    static var metersToKilometers = 1_000.0
    static var metersToInches = 39.3701
    static var metersToFeet = 3.28084
    static var inchesToFeet = 1.0 / 12.0
    
    // INSTANCE PROPERTIES
    var meters: Double
    var inches: Double
    var feet: Double
    var kilometers: Double
    
    // CUSTOM INITIALIZERS
    init(meters: Double) {
        self.meters = meters
        inches = meters * Distance.metersToInches
        feet = meters * Distance.metersToFeet
        kilometers = meters * Distance.metersToKilometers
    }
    
    init(feet: Double) {
        self.feet = feet
        meters = feet / Distance.metersToFeet
        kilometers = meters * Distance.metersToKilometers
        inches = feet / Distance.inchesToFeet
    }
    
    init(inches: Double) {
        self.inches = inches
        meters = inches / Distance.metersToInches
        feet = inches * Distance.inchesToFeet
        kilometers = meters * Distance.metersToKilometers
    }
    
    init(kilometers: Double) {
        self.kilometers = kilometers
        meters = kilometers / Distance.metersToKilometers
        feet = meters * Distance.metersToFeet
        inches = meters * Distance.metersToInches
    }
    
    // INSTANCE METHODS
    func toString() -> String {
        return "Meters: \(meters)\nInches: \(inches)\nKilometers: \(kilometers)\nFeet: \(feet)\n"
    }
}

/*:
 Now create an instance of `Distance` called `mile`. Use the initializer for meters to set the distance to 1600. Print out the property for feet and verify that it is equal to 5249.344.
 */
var mile = Distance(meters: 1600)
print(mile.feet)

/*:
 Now create another instance of `Distance` and give it some other distance. Ensure that both properties are set correctly.
 */
var myDistance = Distance(kilometers: 1)
print(myDistance.toString())

//: [Previous](@previous)  |  page 4 of 10  |  [Next: Exercise - Methods](@next)
