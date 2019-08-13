/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var myCollection: [Any] = ["Saad", 23, 1996.0, true, "Mashkoor", false, 63.0, 1955]
print(myCollection)
/*:
 Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 */
for item in myCollection {
    if let intItem = item as? Int {
        print("The integer has a value of \(intItem)")
    }
}

/*:
 Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 */
let myDictionary: [String: Any] = ["Name": "Saad Mashkoor Siddiqui", "Age": 23, "Weight": 75.0, "Has Brown Eyes": true, "visionLeft": 6.0, "bankBalance": 300.55, "String Age": "23"]
for (key, value) in myDictionary {
    print("\(key):\t\(value)")
}

/*:
 Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 */
var total: Double = 0.0
for value in myDictionary.values {
    if let intValue = value as? Int {
        total += Double(intValue)       // must cast to Double
    } else if let doubleValue = value as? Double {
        total += doubleValue
    } else if let stringValue = value as? String {
        total += 1
    } else if let boolValue = value as? Bool {
        total -= 3
    }
}

print(total)
/*:
 Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 */
var total2: Double = 0.0
for value in myDictionary.values {
    if let numericValue = value as? Double {
        total2 += numericValue
    } else if let intValue = value as? Int {
        total2 += Double(intValue)
    } else if let stringValue = value as? String {
        if let stringAsNumber = Int(stringValue) {
            total2 += Double(stringAsNumber)
        }
    }
}
print(total2)
//: page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
