import Foundation

// 📘 Swift Generics

// 🔹 What is a Generic?
// Generics allow you to write flexible, reusable code that works with any type.

// -------------------------------------
// 🔹 Generic Function
// -------------------------------------
func swapValues<T>(_ a: inout T, _ b: inout T) {
    let temp = a
    a = b
    b = temp
}

var x = 10
var y = 20
swapValues(&x, &y)
print("x: \(x), y: \(y)")  // x: 20, y: 10

var str1 = "Hello"
var str2 = "World"
swapValues(&str1, &str2)
print(str1, str2)          // World Hello

// -------------------------------------
// 🔹 Generic Struct
// -------------------------------------
struct Pair<T, U> {
    var first: T
    var second: U
}

let pair = Pair(first: "Age", second: 30)
print(pair.first, pair.second)

// -------------------------------------
// 🔹 Generic Class
// -------------------------------------
class Stack<Element> {
    private var items: [Element] = []

    func push(_ item: Element) {
        items.append(item)
    }

    func pop() -> Element? {
        return items.popLast()
    }
}

let intStack = Stack<Int>()
intStack.push(1)
intStack.push(2)
print(intStack.pop() ?? -1) // 2

// -------------------------------------
// 🔹 Generic Constraints
// -------------------------------------
func findIndex<T: Equatable>(of value: T, in array: [T]) -> Int? {
    for (index, item) in array.enumerated() {
        if item == value {
            return index
        }
    }
    return nil
}

let names = ["Alice", "Bob", "Charlie"]
if let index = findIndex(of: "Bob", in: names) {
    print("Found at index \(index)")
}

// ✅ Best Practices
// - Use generics to avoid duplication
// - Use constraints (`T: Equatable`, `T: Codable`) to narrow behavior
// - Make generic code readable with clear naming

