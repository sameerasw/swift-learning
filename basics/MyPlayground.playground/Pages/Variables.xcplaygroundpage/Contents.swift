import Foundation

let someConstant: Bool = true // always prefer constant unless need modifications
let someVariable: Int = 42

if !someConstant {
    print(someVariable, "was the value")
} else {
    print(someVariable, "was not the value")
}
