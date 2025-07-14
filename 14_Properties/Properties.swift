import Foundation

// 📘 Swift Properties

// Properties store values in a class or struct.

// 🔹 Stored Properties
struct Car {
    var brand: String      // variable stored property
    let year: Int          // constant stored property
}

var car = Car(brand: "Toyota", year: 2020)
car.brand = "Honda"       // ✅ Allowed
// car.year = 2021        // ❌ Error: 'year' is a let constant

// 🔹 Computed Properties
struct Rectangle {
    var width: Double
    var height: Double

    var area: Double {
        return width * height
    }
}

let rect = Rectangle(width: 4, height: 5)
print("Area: \(rect.area)")

// 🔹 Getters and Setters
struct Temperature {
    var celsius: Double

    var fahrenheit: Double {
        get {
            return (celsius * 9/5) + 32
        }
        set {
            celsius = (newValue - 32) * 5/9
        }
    }
}

var temp = Temperature(celsius: 0)
print(temp.fahrenheit)   // 32.0
temp.fahrenheit = 212
print(temp.celsius)      // 100.0

// 🔹 Property Observers
class Score {
    var points: Int = 0 {
        willSet {
            print("About to set points to \(newValue)")
        }
        didSet {
            print("Changed from \(oldValue) to \(points)")
        }
    }
}

let score = Score()
score.points = 10
score.points = 20

// 🔹 Lazy Stored Property
class DataLoader {
    lazy var data: [String] = loadData()

    private func loadData() -> [String] {
        print("Data loaded...")
        return ["Item1", "Item2"]
    }
}

let loader = DataLoader()
print("Before accessing data")
print(loader.data) // data is loaded here

// ✅ Best Practice
// - Use `let` for constants, `var` for changeable data
// - Use computed properties to derive values
// - Use property observers for side effects like logging
// - Use `lazy` only when needed

