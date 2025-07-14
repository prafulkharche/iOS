import Foundation

// 📘 Swift Optional Chaining 

// 🔹 What is Optional Chaining?
// It allows you to access properties, methods, and subscripts on optional values safely.

class Address {
    var city: String = "Mumbai"
}

class Person {
    var name: String
    var address: Address?

    init(name: String, address: Address? = nil) {
        self.name = name
        self.address = address
    }
}

// 🔹 Without Optional Chaining
let p1 = Person(name: "Alice")
if let city = p1.address?.city {
    print("City is \(city)")
} else {
    print("City not available")
}

// 🔹 With Optional Chaining
let p2 = Person(name: "Bob", address: Address())
print(p2.address?.city ?? "Unknown City") // Mumbai

// 🔹 Optional Chaining with Methods
class Device {
    func turnOn() {
        print("Device is now ON")
    }
}

class User {
    var device: Device?
}

let user1 = User()
user1.device?.turnOn() // Nothing happens (device is nil)

let user2 = User()
user2.device = Device()
user2.device?.turnOn() // Device is now ON

// 🔹 Optional Chaining with Subscripts
let students: [String: [Int]?] = [
    "Alice": [85, 90],
    "Bob": nil
]

let firstScore = students["Alice"]??[0]
print("First score: \(firstScore ?? -1)") // 85

// ✅ Best Practice
// - Use `?.` to avoid crashes on `nil` values
// - Combine with `??` to provide default fallback values
// - Avoid deeply chained optionals for readability

