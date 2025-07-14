📘 Swift Control Flow 

🔹 What is Control Flow?
Control flow lets you control which blocks of code get executed and how often.

🔹 If-Else Statement
```
let age = 20
if age >= 18 {
    print("Adult")
} else {
    print("Minor")
}
```

🔹 Else If Ladder
```
let score = 85
if score >= 90 {
    print("Grade A")
} else if score >= 75 {
    print("Grade B")
} else {
    print("Grade C")
}
```

🔹 Switch Statement
```
let fruit = "Apple"
switch fruit {
case "Apple":
    print("It's an apple")
case "Banana":
    print("It's a banana")
default:
    print("Unknown fruit")
}
```

🔹 For-In Loop
```
for number in 1...5 {
    print(number)
}
```

🔹 While Loop
```
var count = 1
while count <= 3 {
    print(count)
    count += 1
}
```

🔹 Repeat-While Loop
```
var num = 1
repeat {
    print(num)
    num += 1
} while num <= 3
```

✅ Best Practice
- Use `if` for conditions
- Use `switch` for multiple specific cases
- Use `for`, `while`, `repeat` for loops depending on the situation
