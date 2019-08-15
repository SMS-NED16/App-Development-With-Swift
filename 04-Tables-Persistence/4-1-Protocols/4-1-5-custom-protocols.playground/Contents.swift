import UIKit

// Can define our own custom protocols - just specify which properties are read-only and which are read-write
// If property is to be read-only, then should only have a `get` function - can only `get`, not `set
// If property is read/write, then should have both `get` and `set` - like a regular property
// For methods, define name, params, param types, and return type

// EXAMPLE
protocol FullyNamed {
    var fullName: String { get }
    func sayFullName()
}

struct Person: FullyNamed {
    var firstName: String
    var lastName: String
    
    // Protocol property that is computed using other properties of the Person struct
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    // Function inherited from the protocol that is implemented here
    func sayFullName() {
        print(fullName)
    }
}
