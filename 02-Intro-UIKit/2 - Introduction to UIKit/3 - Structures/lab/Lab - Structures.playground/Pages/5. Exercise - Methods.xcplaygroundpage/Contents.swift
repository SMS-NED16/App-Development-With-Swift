/*:
 ## Exercise - Methods
 
 A `Book` struct has been created for you below. Add an instance method on `Book` called `description` that will print out facts about the book. Then create an instance of `Book` and call this method on that instance.
 */
struct Book {
    var title: String
    var author: String
    var pages: Int
    var price: Double
    
    // INSTANCE METHODS
    func description() {
        print("Title: \(title)\nAuthor: \(author)\nPages: \(pages)\nPrice: \(price)" )
    }
}

var myBook = Book(title: "Book of Hermaeus Mora", author: "Hermaeus Mora, Daedric Prince of Knowledge", pages: 1000, price: 1)
myBook.description()
/*:
 A `Post` struct has been created for you below, representing a generic social media post. Add a mutating method on `Post` called `like` that will increment `likes` by one. Then create an instance of `Post` and call `like()` on it. Print out the `likes` property before and after calling the method to see whether or not the value was incremented.
 */
struct Post {
    var message: String
    var likes: Int
    var numberOfComments: Int
    
    // INSTANCE METHODS
    mutating func like() {
        likes += 1
    }
}

var myPost = Post(message: "This is a test post", likes: 100, numberOfComments: 100)
print(myPost.likes)     // 100
myPost.like()
print(myPost.likes)     // 101
//: [Previous](@previous)  |  page 5 of 10  |  [Next: App Exercise - Workout Functions](@next)
