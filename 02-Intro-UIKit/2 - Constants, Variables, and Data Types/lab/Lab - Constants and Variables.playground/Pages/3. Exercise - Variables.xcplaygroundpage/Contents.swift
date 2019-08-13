/*:
 ## Exercise - Variables
 
 Declare a variable `schooling` and set it to the number of years of school that you have completed. Print `schooling` to the console.
 */
var schooling = 16
print(schooling)
/*:
 Now imagine you just completed an additional year of school, and update the `schooling` variable accordingly. Print `schooling` to the console.
 */
schooling += 1
print(schooling)
/*:
 Does the above code compile? Why is this different than trying to update a constant? Print your explanation to the console using the `print` function.
 */
/* Yes, the above code compiles. `schooling` was declared as a variable, which is mutable. This means Swift allows us to modify the value
 stored in the `schooling` variable, which is why no compiler errors were thrown.
 
 This is different than trying to update a constant because unlike variables, constants are immutable - once initialized with a specific value,
 their value cannot be changed or modified. This is why attempting to change the value of `friends` in the previous exercise caused a compiler error.
*/
//: [Previous](@previous)  |  page 3 of 10  |  [Next: App Exercise - Step Count](@next)
