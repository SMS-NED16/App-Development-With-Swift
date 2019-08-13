import UIKit

// Defining a structure for a Person
struct Person {
    var name: String
}

// Accessing specific properties of the Structure
let firstPerson = Person(name: "Jasmine")
print(firstPerson.name)

// If creating only a single instance of a structure
let person = Person(name: "Zane")
print(person.name)

// Adding methods to the Person structure
struct Person2 {
    var name: String
    func sayHello() {
        print("Hello, there! My name is \(name)!")
    }
}

let myPerson = Person2(name: "Jasmine")
myPerson.sayHello()

// INSTANCES
// Defines the attributes of a Shirt
// struct Shirt {
//    var size: Size
//    var color: Color
//}
//
// // Creates an instance of an individual shirt
// let myShirt = Shirt(size: .xl, color: .blue)             // enumeration
//
// // Creates a separate instance of an individual shirt
// let yourShirt = Shirt(size: .m, color: red)              // enumeration

//struct Car {
//    // PROPERTIES
//    var make: String
//    var year: Int
//    var Color: Color
//    var topSpeed: Int
//
//    // METHODS
//    func startEngine() {
//        print("Engine start.")
//    }
//
//    func drive() {
//        print("Driving car.")
//    }
//
//    func park() {
//        print("Parking car.")
//    }
//
//    func steer(direction: Direction) {
//        print("Defining direction.)
//    }
//}
//
//let firstCar = Car(make: "Honda", year: 2010, color: .blue, topSpeed: 120)
//let secondCar = Car(make: "Ford", year: 2013, color: .black, topSpeed: 125)
//
//firstCar.startEngine()
//firstCar.drive()

// INITIALIZERS
var string = String.init()          // ""
var integer = Int.init()            // 0
var bool = Bool.init()              // false

// Initializer shorthand
var newString = String()            // ""
var newInteger = Int()              // 0
var newBool = Bool()                // false

// Default values for struct properties
// Must set values for all properties during initializtion
// One approach is to provide a default property value in the type definition
struct Odometer {
    var count: Int = 0              // default value
}

let odometer = Odometer()
print(odometer.count)               // still 0

// Memberwise initializers - created automatically by Swift, lets us set the value of each property
let newOdometer = Odometer(count: 27_000)
print(newOdometer.count)

// Memberwise initializers are the correct approach when there's not a default state for new instances of type
struct MyPersonStruct {
    var name: String = "John"
    func sayHello() {
        print("Hello, my name is \(name).")
    }
}

var myNewPerson = MyPersonStruct()          // default value
myNewPerson.sayHello()                      // Hello, my name is John.

var myOtherPerson = MyPersonStruct(name: "Saad Mashkoor Siddiqui")
myOtherPerson.sayHello();                    // Hello, my name is Saad Mashkoor Siddiqui

// So can use the same Structure with both default and user-defined values

// Custom Initializer - perform some logic before assigning all the properties
struct Temperature {
    var celsius: Double
}

let temperature = Temperature(celsius: 30.0)                // easy enough

// But if we had a fahrenheitValue, then we'd have to explicitly cast it to a celsius value before initializing a Temperature object
let fahrenheitValue = 98.6
let celsiusValue = (fahrenheitValue - 32.0) / 1.8
let newTemperature = Temperature(celsius: celsiusValue)

// Creating a new Temperature struct with custom initializers for each of Celsius and Double arguments
struct MyTemperature {
    // PROPERTIES
    var celsius: Double                 // this is still the only property of this struct
    
    // INITIALIZERS
    // Custom initializer which will be used to instantiate a Temperature with a celsius value
    init(celsius: Double) {
        self.celsius = celsius;
    }
    
    // Custom initializer which will be used to instantiate a Temperature with a Fahrenheit value
    init(fahrenheit: Double) {
        self.celsius = (fahrenheit - 32.0) / 1.8
    }
    
    // Custom initializer for Kelvin value
    init(kelvin: Double) {
        celsius = kelvin - 273.0
    }
}

let currentTemperature = MyTemperature(celsius: 18.5)           // 18.5
print(currentTemperature.celsius)

let boilingTemperature = MyTemperature(fahrenheit: 212.0)       // This still works - but we're using a Fahrenheit argument
print(boilingTemperature.celsius)                               // 100.0

let freezingTemperature = MyTemperature(kelvin: 273)
print(freezingTemperature.celsius)                              // 0.0

// INSTANCE METHODS
struct Size {
    var width: Double
    var height: Double
    
    func area() -> Double {
        return width * height
    }
}

let someSize = Size(width: 10.0, height: 5.5)                   // Stores a reference to the object
let area = someSize.area()                                      // returns the calculated area as a product of properties

// Mutating methods - methods that modify the value of an instance's property
struct MyOdometer {
    var count: Int = 0          // Assigns a default value to the `count` property
    
    mutating func increment() {
        count += 1
    }
    
    mutating func increment(by amount: Int) {
        count += amount
    }
    
    mutating func reset() {
        count = 0
    }
}

var myOdometer = MyOdometer()         // odometer.count defaults to 0
myOdometer.increment()                // odometer.count is incremented to 1
myOdometer.increment(by: 15)          // odometer.count is incremented to 16
myOdometer.reset()                    // odometer.count is reset to 0

// Computed properties - using attributes to set values of other properties
// Conventionally, with out Temperature object, would have had to set the value of each property in each member-wise initializer
struct TemperatureStruct {
    // PROPERTIES
    var celsius: Double
    var fahrenheit: Double
    var kelvin: Double
}

// When using the default initializer, will have to manually calculate values for each temperature
let myNewTemperature = TemperatureStruct(celsius: 0, fahrenheit: 32.0, kelvin: 273.15)

// Could modify member-wise initializers to automatically calculate the other properties, but this is error-prone and not DRY-compatible
struct TemperatureStruct2 {
    // PROPERTIES
    var celsius: Double
    var fahrenheit: Double
    var kelvin: Double
    
    // MEMBER-WISE INITIALIZERS
    init(celsius userC: Double) {
        self.celsius = userC
        fahrenheit = userC * 1.8 + 32
        kelvin = userC + 273.15
    }
    
    init(fahrenheit userF: Double) {
        fahrenheit = userF
        celsius = (userF - 32) / 1.8
        kelvin = celsius + 273.15
    }
    
    init(kelvin userK: Double) {
        self.kelvin = userK
        celsius = kelvin - 273.15
        fahrenheit = celsius * 1.8 + 32
    }
}

// Initializing with different member-wise initializer
let temperatureCurrent = TemperatureStruct2(celsius: 18.5)
let boiling = TemperatureStruct2(fahrenheit: 212.0)
let freezing = TemperatureStruct2(kelvin: 273.15)

// Using computed properties
struct NewTemperature {
    var celsius: Double
    
    var fahrenheit: Double {
        return celsius * 1.8 + 32   // return statement instead of setting vlaues
    }
    
    var kelvin: Double {
        return celsius + 273.15     // return statement instead of setting values
    }
}

let newCurrentTemperature = NewTemperature(celsius: 0.0)
print(newCurrentTemperature.fahrenheit)
print(newCurrentTemperature.kelvin)

// PROPERTY OBSERVERS
// willSet and didSet will be called every time the value of a property is changed, even if it changes to the same value

struct StepCounter {
    var totalSteps: Int = 0 {
        willSet {
            print("About to set totalSteps to \(newValue).")            // newValue is implicit argument to willSet
        }
        
        didSet {
            if totalSteps > oldValue {
                print("Addded \(totalSteps - oldValue) steps.")         // oldValue is also implict argument
            }
        }
    }
}

var stepCounter = StepCounter()
stepCounter.totalSteps = 40
stepCounter.totalSteps = 100

// STATIC METHODS AND PROPERTIES
// A static property/method is common to all instances of the struct, and is not specifically attached to a
// specific instance. The property is related to the type, but is not a characteristics of an instance itself.
struct myTempStruct {
    // STATIC PROPERTIES
    static var boilingPoint: Double = 100.0
    static var freezingPoint: Double = 0.0
    
    // INSTANCE PROPERTIES
    var celsius: Double             // this will use the default initializer provided by Swift
    var fahrenehit: Double          // this will use custom initializer - computed property
    {
        return celsius * 1.8 + 32
    }
    var kelvin: Double              // this will also use custom initializer - computed property
    {
        return celsius + 273.15
    }
}

// Accessing as a static variable
let boilingPoint = myTempStruct.boilingPoint            // 100.0

// Accessing static method for Double class
let smallerNumber = Double.minimum(100.0, -1000.0)
print(smallerNumber)

// COPYING STRUCTURESs
// When one structure is assigned to another, only the values are copied. The references are not.
var someSize = Size(width: 250, height: 1000)
var anotherSize = someSize

someSize.width = 500            // set the width for the second object
print(someSize.width)           // 250
print(anotherSize.width)        // 500


// The keyword self always refers to the current instance of the object.
// Can be used inside the an instance method to the current instance of the object
//struct MyCar {
//    var color: Color
//
//    var description: String {
//        return "This is a \(self.color) car."
//    }
//}

//
