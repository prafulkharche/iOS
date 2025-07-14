import Foundation

// 📘 Swift Extensions

// 🔹 What is an Extension?
// Extensions add new functionality to existing types (classes, structs, enums, protocols) without modifying the original source code.

// -------------------------------------
// 🔹 Extending Built-in Types
// -------------------------------------
extension String {
    var isNotEmpty: Bool {
        return !self.isEmpty
    }

    func reversedText() -> String {
        return String(self.reversed())
    }
}

let name = "Swift"
print(name.isNotEmpty)        // true
print(name.reversedText())    // tfiwS

// -------------------------------------
// 🔹 Adding Methods to Structs
// -------------------------------------
struct Circle {
    var radius: Double
}

extension Circle {
    func area() -> Double {
        return Double.pi * radius * radius
    }
}

let c = Circle(radius: 3)
print("Area: \(c.area())")    // Area: 28.27...

// -------------------------------------
// 🔹 Adding Initializers
// -------------------------------------
struct Color {
    var red: Int
    var green: Int
    var blue: Int
}

extension Color {
    init(gray: Int) {
        self.red = gray
        self.green = gray
        self.blue = gray
    }
}

let grayColor = Color(gray: 128)
print(grayColor) // Color(red: 128, green: 128, blue: 128)

// -------------------------------------
// 🔹 Protocol Conformance via Extension
// -------------------------------------
protocol Printable {
    func printInfo()
}

extension Circle: Printable {
    func printInfo() {
        print("Circle with radius \(radius)")
    }
}

c.printInfo()

// -------------------------------------
// ✅ Best Practices
// -------------------------------------
// - Use extensions to organize code (e.g., separate UI logic, network logic).
// - Use them to add behavior cleanly, especially protocol conformance.
// - Don't override existing functionality inside extensions.
// - Avoid stored properties (not allowed in extensions).

