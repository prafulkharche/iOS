import Foundation

// 📘 Swift Enums – 

// 🔹 Basic Enum
enum Direction {
    case north
    case south
    case east
    case west
}

var dir = Direction.north
dir = .south

// 🔹 Enum with Switch
func describe(direction: Direction) {
    switch direction {
    case .north:
        print("Going North")
    case .south:
        print("Heading South")
    case .east:
        print("To the East")
    case .west:
        print("Westward bound")
    }
}

describe(direction: .east)

// 🔹 Enum with Raw Values
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

let thirdPlanet = Planet(rawValue: 3)
print("The third planet is: \(thirdPlanet!)") // Optional unwrapping for demo

// 🔹 Enum with Associated Values
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var code = Barcode.upc(8, 85909, 51226, 3)
code = .qrCode("XYZ123")

// 🔹 Enum with Methods
enum TrafficLight {
    case red, yellow, green

    func description() -> String {
        switch self {
        case .red:
            return "Stop"
        case .yellow:
            return "Caution"
        case .green:
            return "Go"
        }
    }
}

let light = TrafficLight.green
print(light.description())

// ✅ Best Practices
// - Use enums for fixed sets of values
// - Use raw or associated values when needed
// - Use switch for exhaustive handling

