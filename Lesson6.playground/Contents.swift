import UIKit


//                                                     Lesson 6
//      Functions - a block of code with a given name, which can be accessed by calling it by name at any time.
func addingTwoNumbers(){
    let a = 3
    let b = 4
    let c = a + b
    print("c sum = ", c)
}
addingTwoNumbers() //   To call the function, write it's name and add parentheses "()" after.


//          Function parameters and return values
func addingNumber() -> Int {
    let a = 1
    let b = 14
    return a + b
}
print(addingNumber())
// also you can print defining a separate var and print that def.:
// var result = addingNumber(numberOne: 90, numberTwo: 10)
//print(result)


//              Functions can take parameters:

//  With argument
func addingNumber(numberOne a: Int, numberTwo b: Int) -> Int { // func name(argument parameter: datatype)
    return a + b
}
print(addingNumber())
var result = addingNumber(numberOne: 90, numberTwo: 10)
print(result)


// Two parameters with no name argument
func addingNumber(_ a: Int, _ b: Int) -> Int {
    return a + b
}
result = addingNumber(80, 10)
print(result)


// Two parameters with no name argument + argument
func addingNumber(_ a: Int, plus b: Int) -> Int {
return a + b
}
result = addingNumber(70, plus: 5)
print(result)


// Variable parameters - more than 1 parameters no name arguments
func average(_ numbers: Double...) -> Double { // "..." means more than one, till, etc.
    var total = 0.0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count) // have to specify that it is double, since the whole numbers in res are Integers
}
var res = average(80, 5, 10, 4, 9)
print(res)
// "->" this means void - it asks to return a value and after this void you must specify what data type to return the value in
//  .... with integer
let someValue = 5
let arrayOfNumbers = [1,2,3,4,5,6,7,8,9]
func filterLessThan(value: Int, numbers: [Int]) -> [Int]{
    var filteredNumbers: [Int] = []
    for number in numbers {
        if number <= value {
            filteredNumbers.append(number)
        }
    }
    return filteredNumbers
}
var newResult = filterLessThan(value: someValue, numbers: arrayOfNumbers)
print(newResult)


// Task in lesson
func filterGreaterAndEqualThan(value: Int, numbers: [Int]) -> [Int] {
    var filteredNumbers: [Int] = []
    for number in numbers {
        if number >= value {
            filteredNumbers.append(number)
        }
    }
    return filteredNumbers
}
newResult = filterGreaterAndEqualThan(value: someValue, numbers: arrayOfNumbers)
print(newResult)


// Another example from xCode - maybe calendar does not work. Worked in other playground. Function with date values
func calculateDateValue(from day: Int, _ month: Int, _ year: Int) {
    let currentDate = Date()
    var dateComponents = DateComponents()
    dateComponents.day = day
    dateComponents.month = month
    dateComponents.year = year
    let userCalendar = Calendar.current
    if let calculateDate = userCalendar.date(from: dateComponents){
        let dayPassed = userCalendar.dateComponents([.day], from: calculateDate, to: currentDate).day!
        let monthPassed = userCalendar.dateComponents([.month], from: calculateDate, to: currentDate).month!
        let yearPassed = userCalendar.dateComponents([.year], from: calculateDate, to: currentDate).year!
        print("\(yearPassed) years, \(monthPassed) months and \(dayPassed) days have passed since")
    }
}
calculateDateValue(from: 1, 5, 1986)


//                          _________________ Lesson 6-7 Revision _____________________

//                                  Lesson 6-7 Revision
//  #1
func multiplyTwoNumbers() {
    print("Result: ", 3 * 3)
}
multiplyTwoNumbers()
//  #2  - no arguments no parameters
func multiplyNumbers() -> Int {
    let a = 5
    let b = 2
    return a * b
}
multiplyNumbers()
print(multiplyNumbers())
//  #3  - Two arguments with two parameters with data type
func multiplyNumbers(firstNumberInt numA: Int , secondNumberInt numB: Int) -> Int {
return numA * numB
}
multiplyNumbers(firstNumberInt: 10, secondNumberInt: 2)
//   #4     - Two parameters without argument
func multiplyNumbers(numA: Int , numB: Int) -> Int {
return numA * numB
}
multiplyNumbers(numA: 30, numB:3)
//  #5   - Two parameters in no-name arguments
func multiplyNumbers(_ numOne: Int , _ numTwo: Int) -> Int {
return numOne * numTwo
}
multiplyNumbers(5, 2)
//  #6  - Two parameters, one argument
func multiplyNumberss(_ numOne: Int , _ numTwo: Int) -> Int {
return numOne * numTwo
}
multiplyNumberss(11, 2)
