import Foundation

// 📘 Swift Codable 

// 🔹 What is Codable?
// Codable is a type alias for Encodable & Decodable.
// It allows conversion between Swift types and external formats like JSON.

struct User: Codable {
    var id: Int
    var name: String
    var isActive: Bool
}

// 🔹 Encode to JSON
let user = User(id: 1, name: "Alice", isActive: true)

if let jsonData = try? JSONEncoder().encode(user),
   let jsonString = String(data: jsonData, encoding: .utf8) {
    print("Encoded JSON: \(jsonString)")
}

// 🔹 Decode from JSON
let json = """
{
    "id": 2,
    "name": "Bob",
    "isActive": false
}
"""

if let jsonData = json.data(using: .utf8) {
    if let decodedUser = try? JSONDecoder().decode(User.self, from: jsonData) {
        print("Decoded User: \(decodedUser.name), Active: \(decodedUser.isActive)")
    }
}

// 🔹 Custom Coding Keys
struct Product: Codable {
    var id: Int
    var productName: String

    enum CodingKeys: String, CodingKey {
        case id
        case productName = "product_name"
    }
}

let productJSON = """
{
    "id": 101,
    "product_name": "Laptop"
}
"""

if let productData = productJSON.data(using: .utf8) {
    if let product = try? JSONDecoder().decode(Product.self, from: productData) {
        print("Product: \(product.productName)")
    }
}

// 🔹 Nested Codable Structs
struct Company: Codable {
    var name: String
    var founder: User
}

let companyJSON = """
{
    "name": "Tech Co",
    "founder": {
        "id": 3,
        "name": "Carol",
        "isActive": true
    }
}
"""

if let data = companyJSON.data(using: .utf8) {
    if let company = try? JSONDecoder().decode(Company.self, from: data) {
        print("Company: \(company.name), Founder: \(company.founder.name)")
    }
}

// ✅ Best Practices
// - Use Codable for models that need to be serialized/deserialized
// - Use custom `CodingKeys` when JSON keys don’t match property names
// - Handle optional and nested types carefully

