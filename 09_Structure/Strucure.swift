import Foundation

// 📘 Swift Structs 

// 🔹 What is a Struct?
// A struct is a lightweight way to model data. It’s a **value type**.

// 🔹 Define a Struct
struct Person {
    var name: String
    var age: Int

    func greet() {
        print("Hello, I’m \(name) and I’m \(age) years old.")
    }
}

// 🔹 Create and Use an Instance
var person1 = Person(name: "Alice", age: 30)
person1.greet()

// 🔹 Modifying Properties
// You need `mutating` for methods that change properties
struct Counter {
    var value: Int = 0

    mutating func increment() {
        value += 1
    }
}

var counter = Counter()
counter.increment()
print(counter.value) // 1

// 🔹 Structs Are Value Types
// Changes do NOT affect the original instance
var original = Person(name: "Bob", age: 25)
var copy = original
copy.name = "Charlie"
print(original.name) // Bob
print(copy.name)     // Charlie

// 🔹 Struct with Custom Initializer
struct Rectangle {
    var width: Double
    var height: Double

    init(side: Double) {
        self.width = side
        self.height = side
    }

    func area() -> Double {
        return width * height
    }
}

let square = Rectangle(side: 4)
print("Area: \(square.area())")

// ✅ Best Practice
// - Prefer `struct` unless you specifically need reference type behavior (then use `class`)
// - Structs are great for modeling simple data types (like models in SwiftUI)

