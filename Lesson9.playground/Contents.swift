import UIKit

//                      Homework revision


/*
 Exercise 1
 Create enum CalculationType as String, where will be: addition, subtraction, multiplication, division with String value
 */

enum CalculationType: String {
    case addition
    case subtraction
    case multiplication
    case division
}


/*
 Exercise 1.1
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument andSecondNumber, parametrs numberTwo, data type Int ,+ argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 Than use switch case to calculate and return Int result
 var result = numberOne
 switch calculationType {
 case .addition: result += numberTwo
 .....
 }
 print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
 return result
 */

func calculateResult(firstNumber numberOne: Int, andSecondNumber numberTwo: Int, withCalculationType calculationType: CalculationType) -> Int{
    var result = numberOne
    
    switch calculationType {
    case.addition: result += numberTwo
    case.subtraction: result -= numberTwo
    case.multiplication: result *= numberTwo
    case.division: numberTwo != 0 ? result /= numberTwo : print("Cannot be divided by 0") // the division will not show correct result
        
    }
    print("Result: \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
    return result
}

/*
 Exercise 1.2
 Declare two numbers.
 Call func 4 times for all calculateResult
 */

let numberOne = 6
let numberTwo = 3

calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: CalculationType.addition)
calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: CalculationType.subtraction)
calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: CalculationType.multiplication)
calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: CalculationType.division)

/*
 Exercise 2
 Create struct Car with elements
 name: String
 productionYear: Int
 horsPower: Int
 Create func getSpecs() print it with elements provided above
 */

struct Car {
    var name: String
    var productionYear: Int
    var horsePower: Int
    
    func getSpecs(){
       print("Car name: \(name) produced in year \(productionYear) with \(horsePower) horsepower")
    }
}

/*
 Exercise 2.1
 Make example of struct Car with the name audiQ7
 Make a copy of audiQ7 and name it audiTT.
 Provide the correct name for audiTT
 Than run getSpecs() for audiQ7 and audiTT
 */

let audiQ7 = Car(name: "AudiQ7", productionYear: 2018, horsePower: 200)
let audiTT = Car(name: "AudiTT", productionYear: 2020, horsePower: 234)

audiQ7.getSpecs()
audiTT.getSpecs()

//                                                  Lesson 9

//Moving to Xcode.
//Test for Git
