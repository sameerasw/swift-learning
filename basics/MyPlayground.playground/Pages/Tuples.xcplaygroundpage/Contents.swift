import Foundation

var username: String = "Hello"
var userIsPremium: Bool = false
var userIsNew: Bool = true

@MainActor func getUsername() -> String {
    username
}

@MainActor func getUserIsPremium() -> Bool {
    userIsPremium
}

@MainActor func getUserInfo() -> (name: String, isPremium: Bool) {
    let name = getUsername()
    let isPremium = getUserIsPremium()
    
    return (name, isPremium)
}

var userData1: (String, Bool) = ("sameera", false)

let info1: (name: String, isPremium: Bool) = getUserInfo()

print("User 1: \(info1.name), \(info1.isPremium)")
