import Cocoa

// vars and let
var greeting = "Hello, HackDearborn"
greeting += " welcome to TechSmith Tech Talk"
print(greeting)

let constantGreeting = "Constant String"
//constantGreeting += "This isn't happening"
print(constantGreeting)

// Computed var + string interpolation
var helloWorldComputed: String {
   let formatter = DateFormatter()
   formatter.dateFormat = "HH:mm:ss"
   return "Hello Spartahack, it's \(formatter.string(from: Date.now))"
}
print(helloWorldComputed)
sleep(1)
print(helloWorldComputed)

// Shorthand computed var
var shortHelloWorldComputed: String {
   "Hello Spartahack, it's \(Date.now)"
}
print(shortHelloWorldComputed)
sleep(1)
print(shortHelloWorldComputed)

// Optionals
//var nonOptional: String = nil //< Not allowed
var schrodingersCat: String? = nil
print(schrodingersCat)
schrodingersCat = "Blackjack"
print(schrodingersCat)

//Unwrapping optionals
// 1 - default value
let catName1 = schrodingersCat ?? "Cat is Dead"

// 2 - conditional unwrap
print(schrodingersCat)
if let schrodingersCat {
   print(schrodingersCat)
   print("cat is alive")
} else {
   print("cat is dead")
}

// 3 - force unwrap
let catName3: String = schrodingersCat!


// Closures - mini function
func buttonPressed(taskClosure: (Int) -> String) {
   // Make the app change UI for the button
   let value = taskClosure(-6)
   print(value)
}

buttonPressed { number in
   if number % 2 == 0 {
      return "even"
   }
   return "odd"
}
buttonPressed(taskClosure: { _ in
   return "don't care about the input"
})
// Shorthand
buttonPressed {
   return $0 > 0 ? "positive" : "negative"
}

// Classes vs Structs
struct Animal {
   let name: String
   var legs: Int?
   // Generated init
}
var snake = Animal(name: "Philbert", legs: nil)
var dog = Animal(name: "Bob", legs: 4)
print(dog)
print(dog)

dog.legs = 3
print(dog)


class AnimalClass {
   let name: String
   var legs: Int?
   
   init(name: String, legs: Int? = nil) {
      self.name = name
      self.legs = legs
   }
}

var bird = AnimalClass(name: "Bird Person", legs: 2)
print(bird)
bird.legs = 1
print(bird.legs)
