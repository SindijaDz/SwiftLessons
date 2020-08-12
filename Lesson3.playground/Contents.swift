import UIKit

//                      Lesson 3
/*
Exercise 2
Create a constant named myAge and assign it the value of your age.
Declare an Int variable named myAgeInTenYears and assign it the value of your age after 10 years(use the constant myAge and the addition(+) operator).
Declare a Float variable named daysPassed and set it to the number of days since you were born plus 10 years (use myAgeInTenYears(variable) and daysInYear(constant)).
Declare another daysInYear constant and set it to 365.25 (the number of days in a leap year).
Declare a Float variable named daysPassed and set it to the number of days since you were born plus 10 years (use myAgeInTenYears(variable) and daysInYear(constant)).
*/

let myAge = 34
let yearsToAdd = 10
var myAgeInTenYears = myAge + yearsToAdd
let daysInYear = 365.25


//method 1
var daysPassed = Float(myAgeInTenYears) * Float(daysInYear)
print (Int(daysPassed))


//method 2
let formatter = DateFormatter()
formatter.dateFormat = "dd.MM.yyyy"
var dateComponet = DateComponents()
dateComponet.year = yearsToAdd
let calendar = Calendar.current
let currentDate = Date()
let birthDate = formatter.date(from: "01.05.1986")
let futureDate = calendar.date(byAdding: dateComponet, to: currentDate)
let daysPassedMethodTwo = calendar.dateComponents([.day], from: birthDate!, to: futureDate!).day
print("My age is \(myAge) years. In \(yearsToAdd) years, I will be \(myAgeInTenYears) years old) \nFrom the moment of my birthday have passed \(Int(daysPassed)) days. Method 2: \(daysPassedMethodTwo ?? 0 )")


//Conditional if statement  (if else statement)
let someLetter: Character = "c"
print (someLetter)
if someLetter == "A"{
    print("this is A")
} else if someLetter == "B"{
    print("This is B")
} else if someLetter == "C"{
    print("This is C")
} else{
    print("None of them is \(someLetter)")
}
//"None of them is c" because case sensitive


// Another way how you can write, if case sensitive is not important
if someLetter == "A" || someLetter == "a" {
    print("this is A")
} else if someLetter == "B" || someLetter == "b"{
    print("This is B")
} else if someLetter == "C" || someLetter == "c"{
    print("This is C")
} else{
    print("None of them is \(someLetter)")
}


//switch case
let letter = "c"
switch letter {
    case "A" , "a":
    print("our letter is A,a")
    case "B" , "b":
    print("our letter is B,b")
    case "c" , "C":
    print("our letter is c,C")
    default:
    print("none of them")
}


// another example
let planetCount = 8
var countExpression = ""
switch planetCount{
    case 0:
    countExpression = "none"
    case 1:
    countExpression = "one"
    case 2...4:
    countExpression = "a few"
    case 5...10:
    countExpression = "several"
    case 12...50:
    countExpression = "dozens or more"
    default:
    countExpression = "don't know ?!"
}
print("There are \(countExpression) known planets in our solar system! ")


// one more example
let level: Character = "A"
switch level{
    case "C":
    print("You have a C level access")
    fallthrough
    case "B":
    print("You have a B level access")
    fallthrough
    case "A":
    print("You have a A level access")
    default:
    break
}
let color = "Red"
let number = 3
switch color{
    case "Red" where number == 2:
    print ("Your color is wrong")
    case "Red" where number == 3:
    print ("Your color is right")
    default:
    break
}


//      Optional data types or just optionals
//  nil = nothing, no space, no number, not even a 0, nil is nothing. Nil special value that says that the object has no meaning, can be used i.e. if app is slow loading, make some parts as nil, not to crash and let the basic necessary things load first
var someString = " " //this has a string of space, this accounts as something
var anotherString: String //this has a string of nothing
var optionalString: String?
optionalString = "100"
var convert = Int(optionalString!) //the exclamation mark is forcing the String? to be converted, in this example to and int that is 100.If it would be 100q, then the result printed would be 6, because int cannot have letters
print(convert ?? 6)


//another example
var toInt:Int? = 0 //adding a question mark makes it OPTIONAL
var stringNumber = "123r"
toInt = Int(stringNumber)
print(toInt ?? 0)


//another example
/* var toInt:Int? = 0 //adding a question mark makes it OPTIONAL
var stringNumber = "123r"
toInt = Int(stringNumber)
print(toInt ?? 0)
if toInt == nil {
    print("converting to Int does contain value: \(toInt!)")
}else{
    print("Converting is nill")
} */
var someNewNumber = "23!"
someNewNumber = "10"
if let actualNumber = Int(someNewNumber){
    print ("String of \(someNewNumber) has integer value of \(actualNumber)")
}else{
    print("String of \(someNewNumber) can't be executed")
}
