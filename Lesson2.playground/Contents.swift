import UIKit
import Foundation

//Lesson 2
//Arithmetic operator

var a = 9
var b = 4
var result = a / b
print (result)


// >>>  Remainder

var rem = a % 4
print (rem)


// >>>   Assignment operator

a = 5
b = 10
var res = a + result
print (res)

//example 2
a = a + b
a+=b
print (a)


// >>>   Comparison operator
    // if conditional statement

if (a != b){
    print("statement is true")
} else {
    print("statement is false")
}


//>>>   Logical operator

let updateDenyMessage = "Can't update xcode"
let updateMessage = "Updated"
let latestXcodeVersion = false
let latestMacVersion = true
let latestApp = true


//      ( ! ) Logical NOT

if !latestXcodeVersion{
    print(updateMessage)
}else{
    print(updateDenyMessage)
}


//      ( &&) Boolean AND

if latestXcodeVersion && latestMacVersion && latestApp{
    print(updateMessage)
}else if latestXcodeVersion && latestApp{
    print(updateDenyMessage + " only app")
}else{
    print (updateDenyMessage)
}


// ( || ) Logical OR

if latestXcodeVersion || latestMacVersion{
    print (updateMessage)
}
var myNumber = 10
if myNumber < 4{
    print("condition is true")
}else{
    print("condition is false")
}
myNumber = 1
if myNumber < 4 && myNumber < 0 {
    print("first condition is true")
}else if myNumber < 8 {
    print("Second condition is true")
}else{
    print("Third condition is true")
}
