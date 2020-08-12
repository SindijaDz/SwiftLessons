import UIKit

//                       Collections
//      Arrays - ordered, non-unique values of the same type

let arrayOfStrings: [String] = ["a", "b", "c", "a", "a"]
print(arrayOfStrings)
let arrayOfCharacters: [Character] = ["a", "b", "b", "a", "a"]
print(arrayOfCharacters)
//if you want to make an empty one, use var to add a value later


//  Initialization with an empty array
var arrayOfIntiger: [Int] = []
//var arrayOfIntiger = [Int]()        // Both arrayOfIntigers are the same


//give value to the array []
arrayOfIntiger = [1, 2, 3, 4, 5]
print (arrayOfIntiger[2])
arrayOfIntiger = [10, 11, 12, 13]
print (arrayOfIntiger)
arrayOfIntiger += [14, 15]
arrayOfIntiger.append(16)
arrayOfIntiger.insert(17, at: 7)
print(arrayOfIntiger)
print(type(of:arrayOfIntiger))
let someArrayOfInt = [99, 98]


//adding two arrays []
var intArray = someArrayOfInt + arrayOfIntiger
print(intArray)
print(intArray.count)
intArray[0] = 8
print(intArray)
intArray[1] = 9
print(intArray)
print(intArray.isEmpty)
print(intArray.removeLast())
print(intArray)
print(intArray.removeFirst())
print(intArray)
//print(intArray.removeAll())
print(intArray)


//remowing specific index
var removeInt = intArray.remove(at:1)
print(removeInt)



//      Sets - unordered, unique values of the same type
let setOfStrings: Set = ["a", "b", "c", "d", "a"]
print(setOfStrings.contains("a"))
print(setOfStrings)
let someArray = setOfStrings.sorted()
print(someArray)
print(setOfStrings.sorted(by: >))


//initialized empty Set of Character
var setOfCharacters: Set<Character> = []
setOfCharacters = ["a"]
print(setOfCharacters)
setOfCharacters.insert("b")
print(setOfCharacters)
setOfCharacters = []
print(setOfCharacters)
var setOfIntigers: Set<Int> = []
print(type(of: setOfIntigers))



//      Dictionaries - [key(unique) : value(not unique)]

//Initialized empty dictionary
var someStringDictionary = Dictionary<String, String>()
var moreStringIntDictionary = [String: Int]()
var anotherDictionary : [String: String] = [:]
var student = [
"firstName": "A",
          "lastName": "M",
           "age": "34"
        ]
print(student)
student["email"] = "a@a.com"
print(student)
student.updateValue("b@b.com", forKey: "email")
print(student)
student.removeValue(forKey: "email")
print(student)
student["age"] = nil
print(student)
print(student.count) //calculate how big is the dictionary
//student.removeAll()
print(student)





/// Information added by AM:


/*
//: Collection Array
import UIKit
// Arrays - not unique, same data type, in index Order started from 0
//print("____ Arrays ____")
let arrayOfStrings = ["a", "b", "c", "a", "a"] // non changeable String, not unique can be duplicates "a", but must be in index order
//arrayOfStrings = ["a", "b", "c", "c"]
let arrayOfCharacters: [Character] = ["a", "b", "a"] // non changeable Character
var arrayOfIntegers : [Int] = []
//var arrayOfIntegers : [Int]() // initialization with empty array
arrayOfIntegers = [2, 4, 6, 8]// changeable Int
arrayOfIntegers = [1, 2, 3, 4]// array with new value
arrayOfIntegers += [5, 6, 7, 8]// add
arrayOfIntegers.append(9)//add
arrayOfIntegers.insert(0, at: 0)// insert at index
arrayOfIntegers[3]// check index
type(of: arrayOfIntegers)
let someArrayOfIntegers = [99,98]
var intArray = arrayOfIntegers + someArrayOfIntegers// join 2 arrays(train)
//var intArray = [Int]()
//intArray = arrayOfIntegers + someArrayOfIntegers// join 2 arrays
//intArray.remove(at: 0)// remove at index
//let removedLastArray = intArray.removeLast()
//removedLastArray
//intArray
//intArray.removeAll()
//intArray = []
intArray.count // total count
intArray[2] = 11 // adding new Int at Index 2
//intArray
if intArray.isEmpty{ // bool
    print(intArray)
}else{
    print("intArray is not empty" )
}
var newArrayOfStrings = ["he", "she", "it"]
var oldArrayOfStrings = ["You ", "Me"]
var both = newArrayOfStrings + oldArrayOfStrings
newArrayOfStrings[0]
newArrayOfStrings[2]
//newArrayOfStrings[3]
both += ["new"]
print(both)
//: Collection Set
//print("____ Set ____")
//Set is without index,uniq velue, works much faster
var setOfCharacters = Set<Character>() // empty Set
var setOfIntegers: Set<Int> = []
var setOfStrings: Set = ["a", "b", "c", "a", "a", "d", "e", "f", "f"]
type(of: setOfStrings) // type
setOfCharacters = ["a"]
setOfCharacters.insert("b") // insert
//setOfCharacters = [] // clear all
setOfCharacters.contains("a")// check if we have a
let someArray = setOfStrings.sorted()// sort to Array
setOfStrings.sorted(by: >)
someArray
let pets = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
//: Collection Dictionaries
// Dictionaries
print("____ Dictionaries ____")
//Swift as a language are very flexible
var someStringDictionaty = Dictionary<String, String>() //declaration
var morStringDictionary =  [Int: String]() // declaration
var anotherSomeDictionary: [Int: String] = [:] // short declaration recomended
//var user = ["user1", "user2", "user3", "user4", "user5"]
//key:value
var student = [
    "first": "Ar",
    "middle": "Ma",
    "last": "Sa",
    "month": "May",
    "website": "1a.lv"
]
student["first2"]// all keys in Dictionaries are Optionals
student["first"] = "Arkadijs" // modify
student["firstName"] = "Mr" // adding new [:]
student.updateValue("St", forKey: "last") //update
student.removeValue(forKey: "firstName") //remove
//person["firstName"] = nil // remove
print(student)
type(of: student)
//person["middle"]
//person["month"]
print("____ For LOOP/Cycle ____")
// we can use with all kind of data type
// to repeat the code for x times till its true
print("1 x 10 is \(1 * 10)")
print("2 x 10 is \(2 * 10)")
print("3 x 10 is \(3 * 10)")
print("4 x 10 is \(4 * 10)")
print("5 x 10 is \(5 * 10)")
print("6 x 10 is \(6 * 10)")
print("7 x 10 is \(7 * 10)")
print("8 x 10 is \(8 * 10)")
print("9 x 10 is \(9 * 10)")
print("10 x 10 is \(10 * 10)")
//for counter in 1...5 { // constant but we don't need to declare
//    print(counter)
//}
for i in 1...10 {
    print("\(i) x 10 is \(i * 10)")
}
for index in 1...5 {
    print("\(index): Hello!")
}//all magic happens inseide the { body
for _ in 1...5 {//value without name
    print("Hello!")
}
print("_____ for Array ______")
let apples = [
    "red apple",
    "green apple",
    "green apple",
    "red apple",
    "red apple",
    "green apple",
    "red apple",
    "green apple",
    "red apple"
]
type(of: apples)
var basket = 0
for apple in apples {//1 from many, cycling our apples Array
    if apple == "red apple" {
        basket += 1
    }
}
print("I have \(basket) red apples in my box")
print("_____ for Dictionary ______")
let numberOfLegs = [
    "spider": 8,
    "ant": 6,
    "cat": 4
]
type(of: numberOfLegs)
for (animalName, legsCount) in numberOfLegs {
    print("\(animalName)s has \(legsCount) legs,")
}
print("_____ for Char ______")
let helloText = "Hello!"
for char in helloText {
    print(char)
}
print("_____ While ______")
//while will reapt till its true
var counter = 0
while true {
    print("Counter is now: \(counter)")
    counter += 1
    if counter == 16 {
        break
    }
}
*/
