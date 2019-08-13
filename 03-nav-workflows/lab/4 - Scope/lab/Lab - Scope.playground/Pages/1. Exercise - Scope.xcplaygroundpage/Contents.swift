/*:
 ## Exercise - Scope
 
 Using a comment or print statement, describe why the code below will generate a compiler error if you uncomment line 10.
*/
for _ in 0..<10 {
    let foo = 55
    print("The value of foo is \(foo)")
}
//print("The value of foo is \(foo)")
// `foo` is defined in the local scope of the for loop, and not in the global scope. Thus, the print statement on the previous line
// does not have access to `foo`, which is why it will cause a compiler error.


/*:
 Using a comment or print statement, describe why both print statements below compile when similar-looking code did not compile above. In what scope is `x` defined, and in what scope is it modified? In contrast, in what scope is `foo` defined and used?
 */
var x = 10
for _ in 0..<10 {
    x += 1
    print("The value of x is \(x)")
}
print("The final value of x is \(x)")

// `x` is defined in the global scope, which means in addition to being accessible everywhere in the global scope, it is also accessible in any local
// scopes created within the global scope. This is why `x` can be accessed, incremented, and printed in the local scope of the for loop as well as
// in the print statement of the global scope
/*:
 In the body of the function `greeting` below, use variable shadowing when unwrapping `greeting`. If `greeting` is successfully unwrapped, print a statement that uses the given greeting to greet the given name (i.e. if `greeting` successfully unwraps to have the value "Hi there" and `name` is `Sara`, print "Hi there, Sara."). Otherwise, use "Hello" to print a statement greeting the given name. Call the function twice, once passing in a value for greeting, and once passing in `nil`.
 */
func greeting(greeting: String?, name: String) {
    if let greeting = greeting {
        print("\(greeting), \(name)!.")
    } else {
        print("Hello, \(name)!")
    }
}

greeting(greeting: "Hi there", name: "Sara")
greeting(greeting: nil, name: "Saad")
/*:
 Create a class called `Car`. It should have properties for `make`, `model`, and `year` that are of type `String`, `String`, and `Int`, respectively. Since this is a class, you'll need to write your own memberwise initializer. Use shadowing when naming parameters in your initializer.
 */
class Car {
    // INSTANCE PROPERTIES
    let make: String
    let model: String
    let year: Int
    
    // INITIATILIZERS
    init(make: String, model: String, year: Int) {
        self.make = make
        self.model = model
        self.year = year
    }
}

let honda = Car(make: "Honda", model: "Accord", year: 2019)
//: page 1 of 2  |  [Next: App Exercise - Step Competition](@next)
