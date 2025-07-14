📘 Swift Strings and Characters 

🔹 What is a String?
A String is a sequence of characters (text).

🔹 Declaring a String
```
var greeting = "Hello, Swift!"
```

🔹 String Concatenation
Join strings using `+`:
```
let name = "Alice"
let message = "Hello, " + name
```

🔹 String Interpolation
Insert values inside strings:
```
let age = 25
let info = "I am \(age) years old"
```

🔹 Multiline Strings
Use triple quotes:
```
let multiline = """
Line 1
Line 2
"""
```

🔹 Characters
A Character holds a single letter or symbol:
```
let letter: Character = "A"
```

🔹 Iterate Over Characters
```
for char in "Swift" {
    print(char)
}
```

✅ Best Practice
- Use `String` for text
- Use `Character` when working with individual characters
