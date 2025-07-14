import Foundation

// 📘 Swift Closures – Quick Tutorial

// 🔹 Basic Closure
let greet = {
    print("Hello from a closure!")
}
greet()

// 🔹 Closure with Parameters
let welcome = { (name: String) in
    print("Welcome, \(name)!")
}
welcome("Alice")

// 🔹 Closure with Return Value
let square = { (number: Int) -> Int in
    return number * number
}
print("Square: \(square(5))")

// 🔹 Shorthand Argument Names
let multiply = {
    return $0 * $1
}
print("Multiplication: \(multiply(3, 4))")

// 🔹 Trailing Closure Syntax
func doTask(completion: () -> Void) {
    print("Task started")
    completion()
    print("Task ended")
}

doTask {
    print("Running task...")
}

// 🔹 Closures as Function Parameters
func operateOnNumbers(a: Int, b: Int, operation: (Int, Int) -> Int) {
    let result = operation(a, b)
    print("Result: \(result)")
}

operateOnNumbers(a: 10, b: 5, operation: { (x, y) in
    return x + y
})

// 🔹 Capturing Values
func makeIncrementer(incrementAmount: Int) -> () -> Int {
    var total = 0
    let incrementer: () -> Int = {
        total += incrementAmount
        return total
    }
    return incrementer
}

let incrementByTwo = makeIncrementer(incrementAmount: 2)
print(incrementByTwo()) // 2
print(incrementByTwo()) // 4

// ✅ Best Practice
// - Use shorthand syntax for brevity
// - Use named parameters for clarity when needed
// - Be cautious with capturing values strongly

