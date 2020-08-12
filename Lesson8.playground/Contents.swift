import UIKit

//                   Lesson 8
//OOP - helps structure our swift code
//Functions in classes within OOP are called class methods

class Player {
    var team = "NY"
    var number: Int? = 10
    var tatoo = true
    
    func description() -> String {
        if number != nil {
            return "Hello! I'm player of that team: \(team) and my number is \(number ?? 0))"
        } else{
                return "Hello! I'm player of that team: \(team)"
        }
        
    }
    
    }

let playerOne = Player()
playerOne.team = "LA"
playerOne.team
playerOne.description()


//  Initialization

    class Alien {
        var name: String
        var age: Int?
        var hairs: Bool
        
        // preparing default values for the class
        init() {
            name = "12"
            hairs = true
            
        }
        
        init(name: String, age: Int?, hairs: Bool) {
            self.name = name
            self.hairs = hairs
            self.age = age
        }
        
        func description() -> String {
            if let alienAge = age {
                return "Hello! I'm an alien, my name is: \(name) and I'm \(alienAge) years old"
            }else{
                return "Hello! I'm an alien, my name is: \(name)"
            }
        }
}
let alien = Alien()
alien.name

let alienOne = Alien(name: "Tod", age: 3, hairs: false)

//      Inheritance - create new classes based on existing ones without having to copy paste the same code lines in all classes

class Parent {
    var name = ""
    var age = 0
    
    init() {}
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func walk() {
        print("can walk")
    }
    
    func sleep() {
        print ("need to sleep")
    }
    
    func eat() {
        print("need to eat")
    }
}

let dad = Parent(name: "Sam", age: 44)
dad.name
dad.age
dad.eat

class Child: Parent {
    
    func feeding() {
        if age <= 2{
            print("Need help")
        }else{
            print("Can eat independently")
        }
    }
    func education() {
        if age >= 3 && age <= 7{
            print("kindergarden education")
        }else if age < 3{
            print("Too early for education")
        }else{
            print("Too late for kindergarden eduaction")
        }
    }
}

//func walk() {
//print("can walk")
    
let littleBoy = Child(name: "Tom", age: 5)
littleBoy.name
littleBoy.sleep()
littleBoy.education()
littleBoy.feeding()
littleBoy.eat()

class SchoolChild: Child {
    func learning(){
        if age >= 8 && age <= 18{
            print("It's a school time")
        }else{
            print("Too early for school")
        }
    }
}

let schoolBoyQ = SchoolChild(name: "Q", age: 8)
schoolBoyQ.learning()
schoolBoyQ.name
schoolBoyQ.feeding()

//      Polymorphism - ability of objects with the same method description to have a different implementation of this method.

class Figure {
    func draw() {}
   
}

class Circle: Figure {
    override func draw() {
        print("Draw a circle")
    }
}
class Rectangle: Figure {
    override func draw() {
        print("Draw a rectangle")
    }
}
class Triangle: Figure{
    override func draw() {
        print("Draw a triangle")
    }
}

//  Class objects

let circle = Circle()
let rectangle = Rectangle()
let triangle = Triangle()

func drawFigure(_ figure: Figure){
    figure.draw()
}

drawFigure(circle)
drawFigure(triangle)
drawFigure(rectangle)
