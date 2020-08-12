import UIKit

//          Looping


//      For loop

var sum = 0
for i in 1...5 {
    //print("i")
    sum += i
}
print(sum)

// This is the long version - logic of how this works
print("1 * 10= \(1 * 10)")
print("2 * 10= \(2 * 10)")
print("3 * 10= \(3 * 10)")
print("4 * 10= \(4 * 10)")
print("5 * 10= \(5 * 10)")
print("6 * 10= \(6 * 10)")
print("7 * 10= \(7 * 10)")

//This is the short version - looping
for index in 1...7 {
    print("\(index) * 10= \(index * 10)")
}


//Another example
for _ in 1...10{            // _ can be used as a no name variable to avoid warning that the vaiable was never used
    print("Hello !")
}


//One more example
let base = 2
let power = 2
var result = base
for _ in 1..<power{
    result *= power
}
print("multiplying \(base) to \(power), will be \(result)")
let apples = [
"red apple",
"green apple",
"red apple",
"yellow apple",
"red apple",
"green apple",
"red apple",
]                   // As many lines where in the array, that many times it cycles
var basket = 0
for apple in apples{
    if apple == "red apple"{
        basket += 1     // each cycle when it finds red apple, it adds 1
    }
}
print("I have \(basket) red apples in my basket")
let numberOfLegs = [
"spider": 8,
"dog": 4,
"ant": 6
]
for (animalName , legsCount) in numberOfLegs{           // Because the array of numberOfLegs was a dictionary, you need to add it in brackets (animalName , legsCount)
    print("\(animalName) has \(legsCount) legs.")
}
let someText = "Swift"
for char in someText {
    print(char)
}



//      While loop - executes a set of statements until its condition becomes false

var count = 5
while count > 0 {
    print("countdown: \(count)")
    count -= 1
}
var counter = 1
while true{
    print("Counter is now: \(counter)")
    counter += 1
    if counter == 10 {
        break
    }
}
