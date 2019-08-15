import UIKit

// COMPARABLE - Used for sorting information
// Same Employee and Company structs as last time, but also implements the `Comparable` protocol
// Comparable protocol requires implementing the `Equatable` protocol and < operator
struct Employee: Equatable, Comparable {
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
    
    // Comparable protocol requires that at least the < operator should be defined
    static func <(lhs: Employee, rhs: Employee) -> Bool {
        return lhs.lastName < rhs.lastName
    }
}

struct Company {
    var name: String
    var employees: [Employee]
}

// List of employees that we have to sort alphabetically by last name
let employee1 = Employee(firstName: "Ben", lastName: "Atkins", jobTitle: "Front Desk", phoneNumber: "415-555-7767")
let employee2 = Employee(firstName: "Vera", lastName: "Carr", jobTitle: "CEO", phoneNumber: "415-555-7768")
let employee3 = Employee(firstName: "Grant", lastName: "Phelps", jobTitle: "Senior Manager", phoneNumber: "415-555-7770")
let employee4 = Employee(firstName: "Sang", lastName: "Han", jobTitle: "Accountant", phoneNumber: "415-555-7771")
let employee5 = Employee(firstName: "Daren", lastName: "Estrada", jobTitle: "Sales Lead", phoneNumber: "415-555-7772")

let employees = [employee1, employee2, employee3, employee4, employee5]

// Once the Comparable protocol has been implemented, can use the `sorted` function to sort by last name
let sortedEmployees = employees.sorted(by: <)
for employee in sortedEmployees {
    print(employee)     // using the CustomStringConvertible protocol's description property
}
// Can use the = and < operators to sort by >, >=, <= operators as well, even though not explicitly defined
let sortedEmployeesByGreaterThan = employees.sorted(by: >)
let sortedEmployeesByGreaterThanEqualTo = employees.sorted(by: >=)
let sortedEmployeesByLessThanEqualTo = employees.sorted(by: <=)
