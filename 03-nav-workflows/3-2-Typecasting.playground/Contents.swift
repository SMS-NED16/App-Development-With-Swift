import UIKit

// Pet sitter calls getClientPet to check what kind of pet the client has and then executes further instructions accordingly
// But this function can only return an `Animal`, which is too generic.
func getClientPet() -> Animal {
    // returns the pet
}

let pet = getClientPet()        // `pet` is of type `Animal`

// The actual functions for the pet sitter are different based on the type of the animal the client has
// Can't use a `Dog` function on a `Cat` function  because both functions access properties specific to their argument types
func walk(dog: Dog) {
    print("Walking \(dog.name).")
}

func cleanLitterBox(cat: Cat) {
    print("Cleaning the \(cat.boxSize) litter box.")
}

func cleanCage(bird: Bird) {
    print("Removing the \(bird.featherColor) feathers at the bottom of the cage.")
}

// Need to be able to access a version of `Pet` that is one of the subclasses of a `Animal`
// SOLUTION - use as? - Conditional cast - casts instance to specified type if its possible to do so

let pets = allClientAnimals()       // assume this returns an Array or Array-like objct

// Attempt to cast each `Pet` as either a Dog, Cat, or Bird before calling the appropriate function
for pet in pets {
    if let dog = pet as? Dog {
        walk(dog: dog)
    } else if let cat = pet as? Cat {
        cleanLitterBox(cat: cat)
    } else if let bird = pet as? Bird {
        cleanCage(bird: bird)
    }
}

// Forced type cast - as! - Will force the downcast to a specified type, but can crash program if incorrect type s
// But if we know for sure that the downcast to a specific type is possible, it is safe to use as!
// For instance, if the pet sitter has only one client with a Dog, he/she can safely cast the pet to a Dog object
let alansDog = fetchPet(for: "Alan")                // alansDog is inferred as the `Animal` type
let alansDoggo = fetchPet(for: "Alan") as! Dog      // alansDog is inferred as the `Dog` type because of forced type cast

// Forced downcast can be useful when working with UIKit. E.g. if we know that the pressing a button on one viewController
// will ALWAYS return a new SecondViewController, we can force downcast the destination to a SecondViewController
class SecondViewController: UIViewController {
    var names: [String]?                            // An optional array/collection of Strings
}

// A function that prepares for a transition from one screen (view controller) to the next
func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // We know that the target destination will always be a ViewController (as opposed to some other app or widget)
    // So can use force down cast to SecondViewController class
    let secondVC = segue.destination as! SecondViewController
    
    // Once downcast is complete, can access `names` property of this class and modify it
    secondVC.names = ["Peter", "Jamie", "Tricia"]
}


// Heterogeneous Collections - Collections or Arrays that store multiple types of data
var items: [Any] = [5, "Bill", 6.7, Dog()]  // an int, a string, a double, and a Dog object

// Because multiple types of data in the collection, we cannot index without using conditional typecast
var moreItems: [Any] = [5, "Bill", 6.7, true]
if let firstItem = moreItems[0] as? Int {       // we have to use optional binding with conditional typecasting before we can access the element
    print(firstItem + 4)        // 9
}

