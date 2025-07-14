import Foundation

// 📘 Swift Classes 
// 🔹 What is a Class?
// A class is a blueprint for creating objects (instances).

// 🔹 Define a Basic Class
class Person {
    var name: String
    var age: Int

    // Initializer
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    // Method
    func greet() {
        print("Hello, my name is \(name) and I am \(age) years old.")
    }
}

// 🔹 Create an Object
let person1 = Person(name: "Alice", age: 28)
person1.greet()

// 🔹 Inheritance
class Student: Person {
    var studentID: String

    init(name: String, age: Int, studentID: String) {
        self.studentID = studentID
        super.init(name: name, age: age)
    }

    override func greet() {
        print("Hi, I'm \(name), a student with ID \(studentID).")
    }
}

let student1 = Student(name: "Bob", age: 21, studentID: "S123")
student1.greet()

// 🔹 Class vs Struct
// Classes are reference types
// Structs are value types

class Box {
    var size: Int
    init(size: Int) {
        self.size = size
    }
}

let box1 = Box(size: 10)
let box2 = box1
box2.size = 20
print(box1.size) // 20 — reference type

// ✅ Best Practice
// - Use classes when you need reference semantics
// - Use initializers to ensure properties are set
// - Use inheritance only when necessary

