import Foundation

// 📘 Swift Protocols

// 🔹 What is a Protocol?
// A protocol defines a blueprint of properties, methods, or other requirements that suit a particular task or piece of functionality.

protocol Identifiable {
    var id: String { get }
}

// 🔹 Conforming to a Protocol
struct User: Identifiable {
    var id: String
}

let user = User(id: "123")
print(user.id)

// --------------------------------
// 🔹 Types of Protocols
// --------------------------------

// 1️⃣ Property Requirements
protocol Named {
    var name: String { get }            // Read-only
    var age: Int { get set }            // Read-write
}

struct Person: Named {
    var name: String
    var age: Int
}

// 2️⃣ Method Requirements
protocol Runnable {
    func run()
}

class Athlete: Runnable {
    func run() {
        print("Running...")
    }
}

// 3️⃣ Mutating Method Requirement
protocol Toggleable {
    mutating func toggle()
}

struct LightSwitch: Toggleable {
    var isOn = false

    mutating func toggle() {
        isOn.toggle()
    }
}

// 4️⃣ Initializer Requirement
protocol Initializable {
    init(value: Int)
}

class MyClass: Initializable {
    required init(value: Int) {
        print("Initialized with value: \(value)")
    }
}

// 5️⃣ Protocol Inheritance
protocol Human {
    func speak()
}

protocol Coder: Human {
    func code()
}

struct Developer: Coder {
    func speak() {
        print("Hello!")
    }
    func code() {
        print("Writing Swift code.")
    }
}

// 6️⃣ Protocol Composition
func displayInfo(item: Identifiable & Named) {
    print("ID: \(item.id), Name: \(item.name)")
}

struct Employee: Identifiable, Named {
    var id: String
    var name: String
    var age: Int
}

let emp = Employee(id: "EMP001", name: "John", age: 30)
displayInfo(item: emp)

// 7️⃣ Optional Protocol Requirements (Only with @objc)
@objc protocol OptionalDelegate {
    @objc optional func didTap()
}

class Button: OptionalDelegate {
    func didTap() {
        print("Button tapped")
    }
}

// --------------------------------
// ✅ Best Practices
// --------------------------------
// - Use protocols to define behavior without implementation.
// - Prefer protocols over base classes for flexibility.
// - Use protocol composition to combine behaviors.
// - Use `@objc optional` only when you absolutely need optional methods (Obj-C compatibility).

