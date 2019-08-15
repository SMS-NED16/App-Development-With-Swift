import UIKit

// EQUATABLE
// EXAMPLE 1 - Building an employee directory application
struct Employee: Equatable {
    var firstName: String
    var lastName: String
    var jobTitle: String
    var phoneNumber: String
    
    // Equatable Protocol requires definition and implementation of == operator with lhs rhs args
    static func ==(lhs: Employee, rhs: Employee) -> Bool {
        // Logic that determines whether the value on the left hand side is equal to that on the right
        return (lhs.firstName == rhs.firstName) &&
            (lhs.lastName == rhs.lastName) &&
            (lhs.jobTitle == rhs.jobTitle) &&
            (lhs.phoneNumber == rhs.phoneNumber)
    }
}

struct Company {
    var name: String
    var employees: [Employee]
}

// To make sure employee information can only be edited by the Employee whose information is being
// displayed, make use of Session.currentEmployee property to keep track of current Employee in the app
// Then compare this with the Employee being displayed to decide whether or not to display edit option

let currentEmployee = Employee(firstName: "Daren", lastName: "Estrada", jobTitle: "Product Manager", phoneNumber: "415-555-0692")

let selectedEmployee = Employee(firstName: "Jacob", lastName: "Edwards", jobTitle: "Marketing Director", phoneNumber: "415-555-9293")

// Would not be able to do this == comparison without implementing the Equatable protocol
if currentEmployee == selectedEmployee {
    // Enable edit button
    print("Edit button enabled")
} else {
    print("Edit button disabled")
}
