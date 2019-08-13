import UIKit

// Basic Class Syntax
class Person {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func sayHello() {
        print("Hello, there!")
    }
}

let person = Person(name: "Jasmine")
print(person.name)
person.sayHello()

// Defining a Base Class
class Vehicle {
    var currentSpeed = 0.0
    
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    
    func makeNoise() {
        // do nothing - an arbitrary vehicle doesn't necessarily make noise
    }
}

let someVehicle = Vehicle()
print("Vehicle: \(someVehicle.description)")


// Defining a subclass that inherits from the Vehicle base class
class Bicycle: Vehicle {
    var hasBasket = false
}

// Creating an instance of the Bicycle class
var bicycle = Bicycle()
bicycle.currentSpeed = 15.0                              // property inherited from Vehicle base class
bicycle.hasBasket = true                                 // property specific to the subclass
print("Bicycle: \(bicycle.description)")                 // method inherited from base class

// Subclassing the Bicycle subclass to create a TandemBicycle class
class Tandem: Bicycle {
    var currentNumberOfPassengers = 0
}

// An instance of Tandem will have access to all properties and methods from Tandem, Bicycle, and Vehicle
let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 22.0
print("Tandem: \(tandem.description)")

// Overriding methods and properties
class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo!")
    }
}

let train = Train()
train.makeNoise()

// Using `super` and getters
class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in gear \(gear)"
    }
}

let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print("Car: \(car.description)")

class NewPerson {
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

class Student: NewPerson {
    var favoriteSubject: String
    
    init(name: String, favoriteSubject: String) {
        self.favoriteSubject = favoriteSubject
        super.init(name: name)      // using the superclass' initializer ot the name value
    }
}


class NewerPerson {
    let name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

var jack = NewerPerson(name: "Jack", age: 24)
var myFriend = jack

jack.age += 1

print(jack.age)
print(myFriend.age)

// Instances of classes are stored as references to memory addresses where that instances' properties will be stored
// When we assign one instance of a class to another, we're assigning the same memory address to the new instance
// This means modifying the new instance will modify the instance variables of the original instance

// This is not the case with instances of structs, which are stored as literal values instead of references.
// The values of one instance are copied to those of another instance, which means modifying the second instance variable values
// will have no effect on the original instance variable values.
struct PersonStruct {
    var name: String        // this is also a variable, not a constant as in the class
    var age: Int
}

var jackStruct = PersonStruct(name: "Jack", age: 24)
var myFriendStruct = jackStruct     // assigning a struct literal to an new struct instance

jackStruct.age += 1           // this will affect only the `jack` instance
print(jackStruct.age)
print(myFriendStruct.age)

// Stable Identity - using a reference to the same object in memory instead of copying objects
class MessageCell: UITableViewCell {
    func update(message: Message) {
        // Update `UITableViewCell` properties with information about the message
        textLabel.text = message.subject
        detailTextLabel.text = message.previewText 
    }
}
