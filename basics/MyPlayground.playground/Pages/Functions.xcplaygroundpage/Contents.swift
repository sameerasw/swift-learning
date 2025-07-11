import Foundation

func myFirstFunction(Name: String = "John") -> String {
    let message = "Function was called by " + Name
    return message
}

func inputValidation (Text: String) {
    guard Text != "" else {
        print("Invalid input. Please enter something")
        return
    }
    
    print(Text, " was entered")
}

print(myFirstFunction(Name: "Sameera"))
inputValidation(Text: "")

// calculated vars
let num1 = 10
let num2 = 20

var calcNumber: Int{
    return num1 + num2
}
