import UIKit

//                  Lesson 7
//      OOP -   object-oriented programming


//blog - example shows that you copy paste the same info again and again
let postTitle = "OOP"
let postText = "Text TEXT"
let postAuthor = "Bootcamp"

let postTitle2 = "OOP2"
let postText2 = "Text TEXT2"
let postAuthor2 = postAuthor

// Classes - it's like a blueprint (in classes you have properties and functios - smaller details and specifics/characters). Classes are used to make the code shorter and make it more structured.

class Post {
    var title = "" // These are the properties of the class
    var text = ""
    var author = ""
    }

let firstPost = Post()

firstPost.title = "This is my first post"
firstPost.text = "txt"
firstPost.author = "AM"

print("Author \(firstPost.author) has published new post: \(firstPost.title) with text - \(firstPost.text)")

let secondPost = Post()

secondPost.title = "This is my second post"
secondPost.text = "txt2"
secondPost.author

print("Author \(secondPost.author) has published new post: \(secondPost.title) with text - \(secondPost.text)")

firstPost === secondPost

// We can reuse everything that is in the class - title, text, etc.


//  Class methods - method. Similar to a function but can be called only within a class unlike func can be called wherever in code

class Comment {
    var smile = ""
    var author = ""
    
    var numberOfLikes = 0
    
    //instance method
    func addComment() {
        numberOfLikes += 1
    }
    
}
let firstComment = Comment()

firstComment.smile = "😅"
firstComment.author = "ACC"

firstComment.addComment()
firstComment.addComment()
firstComment.addComment()

let secondComment = Comment()

secondComment.smile = "😝"
secondComment.numberOfLikes = 5

print("The number of comment reactions for: \(firstComment.smile) is \(firstComment.numberOfLikes)")
print("The number of comment reactions for: \(secondComment.smile) is \(secondComment.numberOfLikes)")

//  Initialization - process of preparing an instance of a class.
//Initializers - good example of a class method. initialize aka create an object.

class Human {
    var name = ""
    var age = 0
    
    init() {}   // This gives opportunity to not write the properties in (name: ..., age: ...)
    
    init(name: String, age: Int) {  // This already mentions that there are properties called name and age)
        self.name = name
        self.age = age
    }
    
}

let person = Human(name: "MM", age: 34)
person.name // This line is not needed if above in () these details are written
person.age // This line is not needed if above in () these details are written

let personTom = Human(name: "Tom", age: 22)
personTom.age
personTom.age = 34  // This adjusted the age from 22 to 34

let personSam = Human() // if init was not written without properties, this line would give an error


//      *** Continuing on the next Lesson
