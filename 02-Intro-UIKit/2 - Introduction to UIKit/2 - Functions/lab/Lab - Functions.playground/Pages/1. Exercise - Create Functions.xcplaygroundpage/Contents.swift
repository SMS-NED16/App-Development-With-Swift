/*:
 ## Exercise - Create Functions
 
 Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the funtion and observe the printout.
 */
func introduceMyself() {
    print("My name is Saad Mashkoor Siddiqui. I am a 23 year old electrical engineering undergraduate who likes to code.")
}
introduceMyself()
/*:
 Write a function called `magicEightBall` that generates a random number and then uses either a switch statement or if-else-if statements to print different responses based on the random number generated. `let randomNum = arc4random_uniform(UInt32(5))` will generate a random number from 0 to 4, after which you can print different phrases corresponding to the number generated. Call the function multiple times and observe the different printouts. Note that the random number generation will not work unless your function is declared after the `import Foundation` statement below. This is because the `arc4random_uniform(_:)` function is declared in the `Foundation` framework.
 */
import Foundation
func magicEightBall() {
    // Generating a random number
    let randomNumber = arc4random_uniform(5)            // a random unsigned 32 bit integer between 0 and 4 inclusive
    
    switch randomNumber {
    case 0:
        print("Outut for 0")
    case 1:
        print("Output for 1")
    case 2:
        print("Outout for 2")
    case 3:
        print("Output for 3")
    default:                                            // number cannot be anything other than 0 - 3
        print("Output for 4")
    }
}

magicEightBall()
magicEightBall()
magicEightBall()
magicEightBall()
magicEightBall()
//: page 1 of 6  |  [Next: App Exercise - A Functioning App](@next)
