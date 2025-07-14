📘 Swift Functions – 

🔹 What is a Function?
A function is a reusable block of code that performs a specific task.

---

🔹 Basic Function
```
func greet() {
    print("Hello!")
}
greet()
```

---

🔹 Function with Parameters
```
func greet(name: String) {
    print("Hello, \(name)!")
}
greet(name: "Alice")
```

---

🔹 Function with Return Value
```
func add(a: Int, b: Int) -> Int {
    return a + b
}
let result = add(a: 5, b: 3) // 8
```

---

🔹 Function Without Parameters but With Return
```
func getMessage() -> String {
    return "Welcome to Swift!"
}
```

---

🔹 Function with Multiple Return Values
```
func getMinMax(numbers: [Int]) -> (min: Int, max: Int) {
    return (numbers.min()!, numbers.max()!)
}
```

---

🔹 Function with Default Parameter
```
func greetUser(name: String = "Guest") {
    print("Hello, \(name)!")
}
greetUser() // Hello, Guest
```

---

🔹 Variadic Function
Allows multiple arguments of the same type:
```
func sum(of numbers: Int...) -> Int {
    return numbers.reduce(0, +)
}
sum(of: 1, 2, 3, 4) // 10
```

---

🔹 Inout Parameters
Allows changing the passed value:
```
func increment(value: inout Int) {
    value += 1
}
var num = 10
increment(value: &num) // num becomes 11
```

---

✅ Best Practice
- Use descriptive names
- Keep functions small and focused
- Use return types when needed
