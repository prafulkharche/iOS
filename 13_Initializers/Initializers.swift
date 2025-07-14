import Foundation

// 📘 Swift Initializers

// 🔹 What is an Initializer?
// Initializers prepare a class, struct, or enum for use by setting initial values.

// 🔹 Default Initializer (for structs without custom init)
struct User {
    var name: String
    var age: Int
}

let user1 = User(name: "Alice", age: 25)
print(user1.name) // Alice

// 🔹 Custom Initializer
struct Rectangle {
    var width: Double
    var height: Double

    init(side: Double) {
        self.width = side
        self.height = side
    }
}

let square = Rectangle(side: 5)
print("Width: \(square.width), Height: \(square.height)")

// 🔹 Initializer in Class
class Person {
    var name: String

    init(name: String) {
        self.name = name
    }

    func greet() {
        print("Hello, I'm \(name)")
    }
}

let person = Person(name: "Bob")
person.greet()

// 🔹 Multiple Initializers
struct Point {
    var x: Int
    var y: Int

    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }

    init(value: Int) {
        self.x = value
        self.y = value
    }
}

let p1 = Point(x: 3, y: 4)
let p2 = Point(value: 7)
print(p2.x, p2.y) // 7 7

// 🔹 Failable Initializer
struct Student {
    var grade: Int

    init?(grade: Int) {
        if grade < 0 || grade > 100 {
            return nil
        }
        self.grade = grade
    }
}

if let student = Student(grade: 95) {
    print("Valid student with grade \(student.grade)")
} else {
    print("Invalid grade")
}

// 🔹 Convenience Initializer (Class only)
class Vehicle {
    var type: String

    init(type: String) {
        self.type = type
    }

    convenience init() {
        self.init(type: "Unknown")
    }
}

let v = Vehicle()
print(v.type) // Unknown

// ✅ Best Practice
// - Use designated initializers to set required properties
// - Use convenience initializers for shortcuts
// - Use `?` in `init?` when initialization can fail

