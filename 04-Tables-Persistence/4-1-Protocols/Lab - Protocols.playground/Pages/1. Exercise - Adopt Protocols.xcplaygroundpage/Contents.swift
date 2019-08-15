/*:
 ## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
 Create a `Human` class with two properties: `name` of type `String`, and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */
class Human: CustomStringConvertible, Equatable, Comparable, Codable {
    let name: String
    let age: Int
    
    // Member-wise initializer
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    // Computed property `description` implemented as part of the CustomStringConvertible protocol
    var description: String {
        return "Human(name: \(name), age: \(age))"
    }
    
    // Equality operator implemented as a static function as part of the `Equatable` protocol
    static func ==(lhs: Human, rhs: Human) -> Bool {
        return (lhs.name == rhs.name) && (lhs.age == rhs.age)
    }
    
    // Less than operator implemented as a static function for the `Comparable` protocol
    static func <(lhs: Human, rhs: Human) -> Bool {
        return lhs.age < rhs.age        // sorting by age
    }
}

let firstHuman = Human(name: "Saad", age: 23)
let secondHuman = Human(name: "Waleed", age: 21)

/*:
 Make the `Human` class adopt the `CustomStringConvertible`. Print both of your previously initialized `Human` objects.
 */
print(firstHuman)
print(secondHuman)
/*:
 Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).
 */
print(firstHuman == secondHuman)    // false
print(firstHuman != secondHuman)    // true - did not have to implement != operator

/*:
 Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
 */
let thirdHuman = Human(name: "Faiq", age: 19)
let fourthHuman = Human(name: "Arsalan", age: 31)
let fifthHuman = Human(name: "Haseeb", age: 20)

let people = [firstHuman, secondHuman, thirdHuman, fourthHuman, fifthHuman]
let sortedPeople = people.sorted(by: <)
for human in sortedPeople {
    print(human)
}

/*:
 Make the `Human` class adopt the `Codable` protocol. Create a `JSONEncoder` and use it to encode as data one of the `Human` objects you have initialized. Then use that `Data` object to initialize a `String` representing the data that is stored, and print it to the console.
 */
import Foundation
let jsonEncoder = JSONEncoder()
if let saadJSON = try? jsonEncoder.encode(firstHuman), let saadJSONString = String(data: saadJSON, encoding: .utf8) {
    print(saadJSONString)
}
//: page 1 of 5  |  [Next: App Exercise - Printable Workouts](@next)
