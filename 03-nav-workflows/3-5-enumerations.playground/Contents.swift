import UIKit

// Enumerations are a Swift data type used for defining a group of limited, related values using numbers

// EXAMPLE 1 - An enum type named Compass that encodes each of the 4 directions as a numbered constant
enum CompassPoint {     // enum name Capitalised
    case north          // each enum value is denoted by `case`
    case south          // conventionally lowercase
    case east
    case west
}

// Enum defines the type, cases define the available values allowed with the type

// EXAMPLE 2 - Defining enums on the same line
enum CompassDirection {
    case north, south, east, west
}

// Compiler assings `compassHeading` as a `CompassDirection` by type inference
var compassHeading = CompassDirection.west

// The compiler assings `compassHeading` as a `CompassPoint` because of the type annotation
// Value can then be assigned using a dot notation
var newCompassHeading: CompassDirection = .west


// Can also change the value of the CompassDirection variable to another enum constatn
newCompassHeading = .north      // again with the dot notation

// EXAMPLE 3 - enums in switch statements
let myCompassHeading: CompassPoint = .west
switch compassHeading {
case .north:
    print("I am heading north.")
case .south:
    print("I am heading south.")
case .west:
    print("I am heading west.")
case .east:
    print("I am heading east.")
}


// EXAMPLE 4 - enums in if statements
let myOtherCompassHeading: CompassDirection = .west
if myOtherCompassHeading == .west {
    print("I am heading west.")
}

// TYPE-SAFETY BENEFITS
// EXAMPLE 5 - Defining movie genres without enums using a struct
struct Movie {
    var name: String
    var releaseYear: Int
    var genre: String
}

let movie = Movie(name: "Finding Doru", releaseYear: 2016, genre: "Aminated")   // typo - will cause errors later on
// Because the genre is a variable of type String, it is techically possible for us
// to set its value to any literal. This is "stringly typed" rather than strongly typed - prone to all errors
// that string values face.

// Defining an enum for Genre
enum Genre {
    case animated, action, romance, documentary, biography, thriller
}

struct NewMovie {
    var name: String
    var releaseYear: Int
    var genre: Genre        // the enum type, not a String
}

// Now it is impossible for genre to be anything other than one of the possible values of the enum type we have defined
let newMovie = NewMovie(name: "Finding Dory", releaseYear: 2016, genre: .animated)
