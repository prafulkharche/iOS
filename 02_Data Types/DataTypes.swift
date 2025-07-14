import Foundation

// 📘 Swift Data Types

// 🔹 1. Basic Data Types
var age: Int = 25                  // Integer
var height: Double = 5.9          // Double (floating point)
var isLoggedIn: Bool = true       // Boolean
var grade: Character = "A"        // Character
var name: String = "Alice"        // String

// Type Inference
let city = "Mumbai"               // Swift infers as String

// 🔹 2. Optional Type
var nickname: String? = nil       // Optional String
nickname = "Ally"
if let unwrapped = nickname {
    print("Nickname: \(unwrapped)")
}

// 🔹 3. Collection Types

// Array – ordered list
let numbers: [Int] = [1, 2, 3, 4]
print(numbers[0])                 // 1

// Set – unordered unique values
let fruits: Set<String> = ["Apple", "Banana", "Apple"]
print(fruits)                     // Only unique values

// Dictionary – key-value pairs
var student: [String: Any] = [
    "name": "Bob",
    "age": 20,
    "isEnrolled": true
]
print(student["name"] ?? "N/A")   // Bob

// 🔹 4. Tuple – Group multiple values
let person = (name: "John", age: 30)
print(person.name)                // John

// 🔹 5. Any, AnyObject, and Never

// Any – any type
var anything: Any = "Hello"
anything = 100

// AnyObject – any class instance
class Animal {}
var obj: AnyObject = Animal()

// Never – for functions that never return
func crash() -> Never {
    fatalError("Crash!")
}

// ✅ Best Practices
// - Prefer type inference for readability
// - Use optional types to represent absence of value
// - Use `Any` and `AnyObject` sparingly
// - Avoid force unwrapping unless you're sure it's safe

