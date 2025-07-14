import Foundation

// 📘 Swift Error Handling 

// 🔹 What is Error Handling?
// It’s a way to respond to and recover from errors in your code.

// 🔹 Define an Error Type
enum FileError: Error {
    case fileNotFound
    case unreadable
    case unknown
}

// 🔹 Throwing Function
func readFile(named fileName: String) throws -> String {
    if fileName.isEmpty {
        throw FileError.fileNotFound
    } else if fileName == "corrupt.txt" {
        throw FileError.unreadable
    }
    return "File content of \(fileName)"
}

// 🔹 Handling Errors with `do-catch`
do {
    let content = try readFile(named: "data.txt")
    print(content)
} catch FileError.fileNotFound {
    print("Error: File not found")
} catch FileError.unreadable {
    print("Error: File is unreadable")
} catch {
    print("Error: \(error)")
}

// 🔹 Using `try?` — returns optional
let result1 = try? readFile(named: "data.txt")
print(result1 ?? "No content")

let result2 = try? readFile(named: "")
print(result2 ?? "Failed to read file")

// 🔹 Using `try!` — forces execution (crashes if error thrown)
let sureContent = try! readFile(named: "data.txt")
print(sureContent) // Only use if you're sure it won't fail

// ✅ Best Practice
// - Use `do-catch` for proper handling
// - Use `try?` for silent failure
// - Avoid `try!` unless you're certain no error will occur
// - Keep error types meaningful and scoped

