import Foundation

let greeting: String = "Hello, playground" // string don't need to explicitly be declared
let greetingString = "Hello, playground"

let isMonday: Bool = true
let isMondayBool = true

let birthday: Date = Date()
let birthdayDate = Date().timeIntervalSinceNow

let number: Int = 42
let numberInt = 42
let numberDouble: Double = 42.0 // double for math
let numberFloat: CGFloat = 42.0 // CGFloat is for UI

print(greeting, greetingString)
print(isMonday, isMondayBool)
print(birthday, birthdayDate)
print(number, numberInt, numberDouble, numberFloat)
