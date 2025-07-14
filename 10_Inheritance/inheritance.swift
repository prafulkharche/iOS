import Foundation

// 📘 Swift Inheritance

// 🔹 What is Inheritance?
// Inheritance allows one class to inherit properties and methods from another class.

// 🔹 Base Class
class Animal {
    var name: String

    init(name: String) {
        self.name = name
    }

    func makeSound() {
        print("Some generic sound")
    }
}

let animal = Animal(name: "Generic Animal")
animal.makeSound() // Some generic sound

// 🔹 Subclass
class Dog: Animal {
    var breed: String

    init(name: String, breed: String) {
        self.breed = breed
        super.init(name: name)
    }

    override func makeSound() {
        print("Bark!")
    }
}

let dog = Dog(name: "Buddy", breed: "Labrador")
print(dog.name)       // Buddy
print(dog.breed)      // Labrador
dog.makeSound()       // Bark!

// 🔹 Prevent Inheritance
final class Cat: Animal {
    override func makeSound() {
        print("Meow!")
    }
}

// class PersianCat: Cat {} ❌ Error: 'Cat' is a final class

// 🔹 Calling Superclass Method
class Bird: Animal {
    override func makeSound() {
        super.makeSound()         // Calls Animal's method
        print("Tweet!")           // Adds Bird's own behavior
    }
}

let bird = Bird(name: "Parrot")
bird.makeSound()
// Output:
// Some generic sound
// Tweet!

// ✅ Best Practice
// - Use inheritance when one class is a specialized version of another
// - Use `override` carefully
// - Mark classes `final` when you don’t want them to be subclassed

