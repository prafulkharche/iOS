import Foundation

// 📘 Swift Optional Binding 

// 🔹 What is Optional Binding?
// It's a safe way to unwrap optionals using `if let` or `guard let`.

// 🔹 Optional Value
var name: String? = "Alice"

// 🔹 Using `if let`
if let unwrappedName = name {
    print("Hello, \(unwrappedName)")
} else {
    print("Name is nil")
}

// 🔹 Using `guard let` (in a function)
func greetUser(_ username: String?) {
    guard let validName = username else {
        print("No name provided")
        return
    }
    print("Hi, \(validName)")
}

greetUser(name)         // Hi, Alice
greetUser(nil)          // No name provided

// 🔹 Optional Binding with Multiple Values
var age: String? = "25"
var city: String? = "Delhi"

if let unwrappedAge = age, let unwrappedCity = city {
    print("Age: \(unwrappedAge), City: \(unwrappedCity)")
} else {
    print("Missing information")
}

// 🔹 Optional Binding with Type Conversion
let strNumber = "100"

if let number = Int(strNumber) {
    print("Converted number: \(number)") // 100
} else {
    print("Invalid number")
}

// ✅ Best Practice
// - Use `if let` for short checks
// - Use `guard let` for early exits
// - Combine multiple optionals in one binding if needed

