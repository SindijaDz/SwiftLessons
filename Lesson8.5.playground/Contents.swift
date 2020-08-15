import UIKit

//                                          Leesson 8.5

//      Homework 5 revision


import UIKit

/*
Exercise 1
1.Create new Class Orange(Fruit). Inside the Class declare:
     color = ""
     teste = ""
     weight = 0.0
 2.Make Class example from Orange Class and named it as someOrange.
 3.Give specific value for:
     color = "Orange"
     taste = "Sweet"
     weight = 0.66
 4.print("My \(someOrange.weight) kg orange has \(someOrange.color) color and \(someOrange.taste) taste")
*/

class Orange {
    var color = ""
    var taste = ""
    var weight = 0.0
}

let someOrange = Orange()

someOrange.color = "Orange"
someOrange.taste = "Sweet"
someOrange.weight = 0.66

print("My \(someOrange.weight) kg orange has \(someOrange.color) color and \(someOrange.taste) taste")

/*
Exercise 2
1.Create new Parent(Superclass) Class Figure. Inside the Class declare:
         height: Float
         width: Float
         radius: Float
         square: Float
         perimeter: Float
 2. init(height: Float, width: Float) and 2 methods:
         func squareOfFigure() -> Float { return square }
         func perimeterOfFigure() -> Float { return perimeter }
 3.Create new Child(Subclass) Rectangle of Paret Class Figure
 3.Inside Rectangle override func squareOfFigure() -> Float to calculate and return square and override func perimeterOfFigure() -> Float to calculate and return perimeter !
 4.Inside Rectangle make a func description() where we can print("Rectangle area is: \(squareOfFigure()), and perimeter Of Figure is: \(perimeterOfFigure())")
 5.Make Class example from Rectangle Class and named it as myRectangle and give a value as you want for height and width.
 6.Finally call myRectangle.description()
*/

class Figure {
    var height: Float = 0
    var width: Float = 0
    var radius: Float = 0
    var square: Float!
    var perimeter: Float!
    init(radius2: Float) {
        radius = radius2
    }
    init(height: Float, width: Float){
        self.height = height
        self.width = width
    }
    func squareOfFigure() -> Float {
        return square
    }
    func perimeterOfFigure() -> Float {
        return perimeter
    }
}
class Rectangle: Figure {
    override func squareOfFigure() -> Float {
        square = height * width
        return square
    }
    override func perimeterOfFigure() -> Float {
        perimeter = (height + width) * 2
        return perimeter
    }
    func description(){
       print("Rectangle area is: \(squareOfFigure()), and perimeter Of Figure is: \(perimeterOfFigure())")
    }
}

// calculating circle - He forgot to add in the task
class Circle: Figure {
    override func squareOfFigure() -> Float {
        square = Float.pi * radius * radius
        return square
    }
    override func perimeterOfFigure() -> Float {
        perimeter = Float.pi * 2 * radius
        return perimeter
    }
    func description(){
       print("Circle area is: \(squareOfFigure()), and perimeter Of Figure is: \(perimeterOfFigure())")
    }
}
let myRectangle = Rectangle(height: 6, width: 9)
myRectangle.description()
let myCircle = Circle(radius2: 5)
myCircle.description()


// Enumeration - Enumeration is a very powerful concept for avoiding minor mistakes in application development, it makes your code cleaner and safer.

var someDay = "Friday"

func setupAlarm() {
    if someDay == "friday"{
        print("set up alarm to 8AM")
    }else{
        print("No alarm for Today")
    }
}

setupAlarm()

enum Weekday{
    case monday
    case tuesday
    case wednesday
    case thrursday
    case friday
    case saturday
    case sunday
    // or declare like this: case monday, tuesday, wednesday, etc.
}

//var weekday = Weekday.friday // or below example
var weekday: Weekday = .friday
weekday = .friday

func setupBedTime(){
    if weekday == .monday || weekday == .tuesday {
        print("setup alarm to 7:45AM")
    }else{
        print("setup alarm to 8AM")
    }
}
setupBedTime()

func setupSleepAlarm() {
    switch weekday {
    case .monday:
        print("Setup alarm to 7:45")
    case .tuesday:
        print("Setup alarm to 7:00")
    case.wednesday:
        print("Setup alarm to 7:30")
    case.thrursday:
        print("Setup alarm to 7:50")
    case.friday:
        print("Setup alarm to 8:00")
    default:
        print("No alarm")
        
    }
}
setupSleepAlarm()
weekday = .friday

enum CalculationType: String {
    case addition = "+"
    case subtraction = "-"
    case multiplication = "*"
    case division = "/" // if you forget to type = "/" it will print the name division
}

var calc = CalculationType.addition
print(calc.rawValue)

enum Planet: Int {
    case mercury, venus, earth, mars, saturn, neptune // if you want this to be calculated from 1 add planet = 1 for example
}

var somePlanet = Planet.earth
print("Earth is the \(somePlanet.rawValue) planet from the sun.")

if let possiblePlanet = Planet(rawValue: 6){
print("The 6th planet is \(possiblePlanet)")
}

//associated parameters
enum Weekend{
    case saturdays(String)
    case sunday(String, Int, String)
    }
var wnd = Weekend.sunday("set bedtime at", 11, "PM")
print(wnd)

//  Structure - unlike classes, structures cannot inherit characteristics from other structures. Similarly, structures, unlike classes, do not have initializers. Structures are not a reference type.

//checkers
let playerOne = "playerOne"
let playerOneXPPosition = 10
let playerOneYPosition = 8

let playerTwo = "playerTwo"
let playerTwoXPPosition = 10
let playerTwoYPosition = 8

func getPositionOnTheGameBoard(from player: String, with x: Int, and y: Int){
    print("The position of \(player): x \(x), y\(y)")
}

getPositionOnTheGameBoard(from: playerOne, with: playerOneXPPosition, and: playerOneYPosition)
getPositionOnTheGameBoard(from: playerTwo, with: playerTwoXPPosition, and: playerTwoYPosition)


struct PositionOnBoard {
    var player: String
    var x: Int
    var y: Int
    
    func getPositionOn(){
    print("The position of \(player): x \(x), y\(y)")
}
}

//  object
var playerOnePosition = PositionOnBoard(player: "Player one", x: 10, y: 6)
var playerTwoPosition = PositionOnBoard(player: "player two", x: 11, y: 3)

playerOnePosition.getPositionOn()
playerTwoPosition.getPositionOn()

class MacBook {
    var name : String
    var year: Int
    var color: String
    
    init(name: String, year: Int, color: String) {
        self.name = name
        self.color = color
        self.year = year
    }
    
    func getSpecs() {
        print("Model: \(name), year: \(year), with color \(color)")
    }
}

let macBookPro = MacBook(name: "MacBookPro", year: 2020, color: "Grey")
macBookPro.getSpecs()

let macBookAir = macBookPro
macBookAir.name = "MacBookAir"

macBookAir.getSpecs()
macBookPro.getSpecs()
//both times it will write macBookAir because they are using the same memory cell



struct iPhone {
    var name : String
    var capacity: Int
    var color: String
    
    func getSpecs() {
        print("Model: \(name), with: \(capacity) GB, with color \(color)")
    }
}

let iPhoneXR = iPhone(name: "iPhone XR", capacity: 64, color: "Black")
var iPhone11 = iPhoneXR // see how it reacts when changing to let
iPhone11.name = "iPhone 11"

iPhoneXR.getSpecs()
iPhone11.getSpecs()
