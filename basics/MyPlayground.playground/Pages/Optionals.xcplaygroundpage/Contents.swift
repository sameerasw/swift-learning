import Foundation

let myBool: Bool? = nil // this can be nil
print(myBool)

// nil coalescing operator
let myBool2: Bool = myBool ?? false
print(myBool2)

func checkIfTrue() -> Bool? {
    myBool // compilor knows you are returning this value
}

func checkIfTrue2() -> Bool {
    myBool ?? false
}

// if-let
func checkIfTrue3() -> Bool {
    if let newValue = myBool {
        return newValue
    }
    
    return false
}

func checkIfTrue4() -> Bool {
    if let myBool{
        return myBool // doing the same above logic but no need of creating a new variable to hold that value and pass
    }
    
    return false
}

// Guard (inverse of if)
func checkIfTrue5() -> Bool {
    guard let myBool else {
        return false
    }
    
    return myBool // same above logic but with guard.
}


func checkIfUserSetup() -> Bool {
    var userIsNew: Bool? = true
    var userCompletedOnboarding: Bool? = false
    var userFavoriteColor: String? = nil
    
    if let userIsNew, let userCompletedOnboarding, let userFavoriteColor {
        return getUserSummary(
            userIsNew: userIsNew,
            userCompletedOnboarding: userCompletedOnboarding,
            userFavoriteColor: userFavoriteColor
        )
    }
    
    return false
}

func getUserSummary(userIsNew: Bool, userCompletedOnboarding: Bool, userFavoriteColor: String) -> Bool {
    if userIsNew && userCompletedOnboarding{
        return true
    }
    
    return false
}

// check user with guard

func checkIfUserSetupGuard() -> Bool {
    var userIsNew: Bool? = true
    var userCompletedOnboarding: Bool? = false
    var userFavoriteColor: String? = nil
    
    guard let userIsNew else {
        return false
    }
    
    guard let userCompletedOnboarding else {
        return false
    }
    
    guard let userFavoriteColor else {
        return false
    }
    
    // this approach is much more simpler than if we used nested if for checking if all of the above are present one by one
    // because, even if all the checks were done, we are still inside the function at depth of one without nesting which is too complex
    return getUserSummary(
        userIsNew: userIsNew,
        userCompletedOnboarding: userCompletedOnboarding,
        userFavoriteColor: userFavoriteColor
    )
}

// optional chaining
func getNameInfo() {
    let name: String? = "John"
    
    let isFirstCharacter = name?.first?.isLowercase // if name has a value, if it has a first character (not ""), check first letter
    
}

// How to safely unwrap optionals
// nil coalscing ??
// if-let
// guard

// Unsafe method with !
let username: String? = "john"

let usernameCount: Int = username!.count // I know 100% it is not nill so proceed, but will crash if nil
