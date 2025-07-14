
import Foundation

// 📘 Swift Concurrency 

// -------------------------------------------------
// 🔹 1. async/await – Basic Usage
// -------------------------------------------------
func fetchUserName() async -> String {
    return "Alice"
}

Task {
    let name = await fetchUserName()
    print("User: \(name)")
}

// -------------------------------------------------
// 🔹 2. async let – Run Tasks in Parallel
// -------------------------------------------------
func fetchFirstName() async -> String {
    try? await Task.sleep(nanoseconds: 1_000_000_000)
    return "John"
}

func fetchLastName() async -> String {
    try? await Task.sleep(nanoseconds: 1_000_000_000)
    return "Doe"
}

Task {
    async let first = fetchFirstName()
    async let last = fetchLastName()

    let fullName = await "\(first) \(last)"
    print("Full Name: \(fullName)")
}

// -------------------------------------------------
// 🔹 3. Task – Run Concurrent Code
// -------------------------------------------------
Task {
    print("This runs concurrently")
    await Task.yield()
    print("Still in the same task")
}

// -------------------------------------------------
// 🔹 4. Task.sleep – Delay Without Blocking
// -------------------------------------------------
Task {
    print("Waiting...")
    try? await Task.sleep(nanoseconds: 2_000_000_000)
    print("Done waiting")
}

// -------------------------------------------------
// 🔹 5. TaskGroup – Structured Concurrency
// -------------------------------------------------
func fetchNumbers() async -> [Int] {
    await withTaskGroup(of: Int.self) { group in
        for i in 1...5 {
            group.addTask {
                try? await Task.sleep(nanoseconds: UInt64(i * 100_000_000))
                return i * 2
            }
        }

        var results: [Int] = []
        for await value in group {
            results.append(value)
        }
        return results
    }
}

Task {
    let numbers = await fetchNumbers()
    print("Doubled numbers: \(numbers.sorted())")
}

// -------------------------------------------------
// 🔹 6. MainActor – Ensure Code Runs on Main Thread
// -------------------------------------------------
@MainActor
class UIModel {
    var labelText = ""

    func updateLabel(text: String) {
        labelText = text
        print("Updated on main thread: \(labelText)")
    }
}

let model = UIModel()
Task {
    await model.updateLabel(text: "Hello UI")
}

// -------------------------------------------------
// 🔹 7. Actor – Safe Access in Concurrency
// -------------------------------------------------
actor BankAccount {
    private var balance: Int = 0

    func deposit(_ amount: Int) {
        balance += amount
    }

    func getBalance() -> Int {
        return balance
    }
}

let account = BankAccount()

Task {
    await account.deposit(100)
    let current = await account.getBalance()
    print("Balance: \(current)")
}

// -------------------------------------------------
// 🔹 8. Cancellation
// -------------------------------------------------
func cancellableTask() async {
    for i in 1...10 {
        if Task.isCancelled {
            print("Task was cancelled at \(i)")
            return
        }
        print("Working... \(i)")
        try? await Task.sleep(nanoseconds: 500_000_000)
    }
}

let task = Task {
    await cancellableTask()
}

Task {
    try? await Task.sleep(nanoseconds: 2_000_000_000)
    task.cancel()
}

// -------------------------------------------------
// ✅ Best Practices for Concurrency
// -------------------------------------------------
// - Use async/await instead of completion handlers
// - Prefer `Task` and `TaskGroup` for concurrent operations
// - Use `actor` to protect shared mutable state
// - Use `MainActor` for UI updates
// - Always handle task cancellation when appropriate
// - Avoid data races and unstructured tasks
