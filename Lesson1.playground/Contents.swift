import UIKit

//                                  Lesson 1
//      Variables and Constats

//code is running from the line 1, if we don't have a comment
//Comment - one line
//String
/* comment - till the end
 https://www.quora.com/What-are-the-reserved-Swift-keywords
 */
//camel case, no space, to be readable, even when we need to right the capital
var rigaCity = "Riga"
rigaCity = "R"
var swiftString = "Hello, online playground"
swiftString = "Swift"
var swiftVersion = 5
print(swiftString)
//MARK: String interpolation
print("Welcome to \(swiftString).org Welcome to the  \(swiftString) community. Together we are working to build a programming language to empower everyone to turn their ideas into apps on any platform. Announced in 2014, the  \(swiftString) programming language has quickly become one of the fastest growing languages in history.  \(swiftString) makes it easy to write software that is incredibly fast and safe by design. Our goals for  \(swiftString) are ambitious: we want to make programming simple things easy, and difficult things possible. For students, learning Swift has been a great introduction to modern programming concepts and best practices.\t \t  And because it is open, their  \(swiftString) skills will be able to be applied to an even broader range of platforms, from mobile devices to the desktop to the cloud.\n \n ")
swiftString = "Java"
var aboutSwift = """
we want to make programming simple things easy,
and difficult
things possible. For students,
learning Swift has been a great
"""
//Constants
let newSwift = "Version 5.1"
//newSwift = "Version 5.2"
//MARK: Types of Data
var fullName = "AM"
let myDogAge = 1.5
let age = 34
let myHeight = 194.5
let myWeight = 94
let student: Bool = false
var myDouble:Double = 10.9
myDouble = 121.123444
var myFloat: Float = 0.0
myFloat = 121.123444
//MARK: Casting
let castIntToDouble = Double(age) + myDogAge
print(castIntToDouble)
let mySelf = "I am "
let newStudent = "student"
let course = mySelf + " " + newStudent
print(course)
var castIntToString = mySelf + String(age) + " years old"
print(castIntToString)
castIntToString.append(" !")
castIntToString.count
let e = 9
let f = 4
var g = e % f
//MARK: Logic Operators
let updateDeniedMessege = "Can't update Xcode"
let updateMessage = "Updated!"
let latestXcodeVersion = false
let latestMacVersion = true
if latestXcodeVersion || latestMacVersion {
    print(updateMessage)
} else{
    print(updateDeniedMessege)
}
