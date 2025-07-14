📘 Swift Collection Types – 

🔹 What are Collection Types?
Swift has 3 primary collection types to store multiple values:
1. Array – ordered collection
2. Set – unordered unique values
3. Dictionary – key-value pairs

---

🔹 Array
```
var numbers: [Int] = [1, 2, 3, 4]
numbers.append(5)
print(numbers[0]) // 1
```

---

🔹 Set
```
var fruits: Set = ["Apple", "Banana", "Apple"]
print(fruits) // No duplicates
fruits.insert("Mango")
```

---

🔹 Dictionary
```
var capital: [String: String] = [
    "India": "New Delhi",
    "Japan": "Tokyo"
]
print(capital["India"]!)
```

---

🔹 Looping Through Collections

✅ Array:
```
for num in numbers {
    print(num)
}
```

✅ Dictionary:
```
for (country, city) in capital {
    print("\(country): \(city)")
}
```

---

✅ Best Practice
- Use Array when order matters
- Use Set for unique values
- Use Dictionary for key-value mapping
