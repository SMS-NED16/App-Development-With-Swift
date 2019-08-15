import UIKit

// CODABLE - A protocol that allows us to achieve data persistence with our classes
// Objects of our classes can be encoded to and decoded from a format that allows them to be stored in phone's memory for later
// If all properties conform to codable, then just add Codable to the list of protocols implemented by the class
// If a property uses a built-in data type, it already conforms to Codable
// Encoder - transforms properties and values of an object to a format that can be WRITTEN TO the phone's memory for persistence
// Decoder - READS FROM a specific format stored on the phone's memory and creates an Object with the right key/values
struct Employee: Equatable, Comparable, Codable {
    var firstName: String
    var lastName: String
    var jobTitle: String
    var phoneNumber: String
    
    init(firstName: String, lastName: String, jobTitle: String, phoneNumber: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.jobTitle = jobTitle
        self.phoneNumber = phoneNumber
    }
    
    // EQUATABLE IMPLEMENTATION
    static func ==(lhs: Employee, rhs: Employee) -> Bool {
        return lhs.firstName == rhs.firstName && lhs.lastName == rhs.lastName &&
        lhs.jobTitle == rhs.jobTitle && lhs.phoneNumber == rhs.phoneNumber
    }
    
    // COMPARABLE IMPLEMENTATION
    static func <(lhs: Employee, rhs: Employee) -> Bool {
        return lhs.lastName < rhs.lastName
    }
}

// Instanatiate an Employee
let ben = Employee(firstName: "Ben", lastName: "Atkins", jobTitle: "Front Desk", phoneNumber: "415-555-7767")

// Instantiate a JSON Encoder
let jsonEncoder = JSONEncoder()

// If the encoder successfully encodes `ben` as JSON object and if the data can be transformed to a UTF-8 JSON string
if let jsonData = try? jsonEncoder.encode(ben), let jsonString = String(data: jsonData, encoding: .utf8) {
    print(jsonString)   // print the JSON string
}

