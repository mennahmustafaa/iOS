class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
}

let person = Person()  // Creates a new Person instance and prints "John Doe is alive!"
person.printGreeting()  // Prints "Hello, I'm John Doe"

---------------------
class Car {
    var model: String
    
    init(model: String) {
        self.model = model
    }
}

var car1 = Car(model: "Tesla Model S")
print("Car 1 model: \(car1.model)")  // Output: Car 1 model: Tesla Model S

// Create a copy of car1
var car2 = car1
car2.model = "Ford Mustang"

print("Car 1 model: \(car1.model)")  // Output: Car 1 model: Ford Mustang
print("Car 2 model: \(car2.model)")  // Output: Car 2 model: Ford Mustang

struct Bicycle {
    var model: String
}

var bike1 = Bicycle(model: "Mountain Bike")
print("Bike 1 model: \(bike1.model)")  // Output: Bike 1 model: Mountain Bike

// Create a copy of bike1
var bike2 = bike1
bike2.model = "Road Bike"

print("Bike 1 model: \(bike1.model)")  // Output: Bike 1 model: Mountain Bike
print("Bike 2 model: \(bike2.model)")  // Output: Bike 2 model: Road Bike

print(bike1.model)  // Output: Mountain Bike

---------------------------
class Person {
    
    // Initializer that runs when a new Person object is created
    init() {
        print("mennah")  // This will print "mennah" each time a new object is created
    }
    
    // Method that prints a string
    func ss() {
        print("kjj")  // This will print "kjj" when the ss() method is called
    }
}

// Loop that runs 3 times
for _ in 1...3 {
    let person = Person()  // A new Person object is created, so "mennah" is printed
    
    person.ss()  // The ss() method is called, so "kjj" is printed
}

/*
Output:
mennah  // First iteration, object created
kjj     // First iteration, ss() method called

mennah  // Second iteration, object created
kjj     // Second iteration, ss() method called

mennah  // Third iteration, object created
kjj     // Third iteration, ss() method called
*/
------------------------
protocol Identifiable {
    var id: String { get set }
    func identify()
}
extension Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}
-------
protocol Identifiable {
    var id: String { get set }
    func identify()
}
extension Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}
struct User: Identifiable {
    var id: String
}

let twostraws = User(id: "twostraws")
twostraws.identify()
----------------------------------------------
var age: Int? = nil
age = 23
---
var name: String? = "mennah"
if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}
------------------------------


// Define a function 'greet' that accepts an optional String as a parameter
func greet(_ name: String?) {
    // Use 'guard let' to safely unwrap the optional 'name'.
    // If 'name' is nil, the else block is executed, printing a message and returning from the function.
    guard let unwrapped = name else {
        // Print this message if 'name' is nil
        print("You didn't provide a name!")
        // Exit the function early if the optional is nil
        return
    }

    // If 'name' is not nil, the unwrapped value (now a regular String) is used.
    // Print a greeting message with the unwrapped value
    print("Hello, \(unwrapped)!")
}

// Example calls to the 'greet' function:
// Case where 'name' is nil, triggering the else block
greet(nil)      // Output: "You didn't provide a name!"

// Case where 'name' is not nil, successfully unwrapping and printing a greeting
greet("Mennah") // Output: "Hello, Mennah!"
--------------------------------------
let str = "5"  // Declare a string that contains a valid integer value
let num = Int(str)!  // Force unwrap the result of converting 'str' to an optional Int

// Since 'str' contains a valid integer, the conversion succeeds, 
// and 'num' becomes a regular Int (not an optional).
// However, if 'str' were something like "Fish", this line would crash the program
// because force unwrapping 'nil' causes a runtime error.
-----
let str = "Fish"  // Declare a string that does not contain a valid integer
let num = Int(str)!  // Force unwrap the conversion, but this will cause a crash

// The conversion of "Fish" to an Int fails and returns 'nil'.
// When force unwrapping 'nil', the program will crash.
// Force unwrapping is dangerous if you're not 100% sure the optional contains a value.
-----
let str = "5"  // Declare a string that contains a valid integer value

// Use optional binding (if let) to safely unwrap the optional returned by Int(str)
if let num = Int(str) {
    // If the conversion succeeds, 'num' contains the unwrapped integer value
    print("The number is \(num)")  // Output: "The number is 5"
} else {
    // If the conversion fails (if 'str' cannot be converted to an Int),
    // this block will be executed.
    print("Conversion failed")
}

// In this code, the optional is unwrapped safely using 'if let'.
// If the conversion fails (e.g., for "Fish"), the else block will handle the failure
// without crashing the program.
-----
let str = "Fish"  // Declare a string that does not contain a valid integer

// Use optional binding (if let) to safely attempt the conversion
if let num = Int(str) {
    // This block will be skipped because "Fish" cannot be converted to an Int
    print("The number is \(num)")
} else {
    // The else block handles the case where the conversion fails
    print("Conversion failed")  // Output: "Conversion failed"
}

// The optional binding ensures that the program does not crash if the conversion fails.
// Instead, it safely handles the nil case in the else block.
---
class User {
    var username: String!  // Declare an implicitly unwrapped optional property

    init(username: String?) {
        // Assign a value to username, ensuring it won't be nil when used later
        self.username = username ?? "DefaultUser"  // Provide a default value if nil
    }

    func greet() {
        // Use the implicitly unwrapped optional directly
        print("Hello, \(username)!")  // This is safe because we ensured it has a value in init
    }
}

let user1 = User(username: "Mennah")  // Create a User with a specific username
user1.greet()  // Output: "Hello, Mennah!"

let user2 = User(username: nil)  // Create a User with nil username
user2.greet()  // Output: "Hello, DefaultUser!"
----
//Like regular optionals, implicitly unwrapped optionals might contain a value or they might be nil. However, unlike regular optionals you don’t need to unwrap them in order to use them: you can use them as if they weren’t optional at all.

//Implicitly unwrapped optionals are created by adding an exclamation mark after your type name, like this:

//let age: Int! = nil
//Because they behave as if they were already unwrapped, you don’t need if let or guard let to use implicitly unwrapped optionals. However, if you try to use them and they have no value – if they are nil – your code crashes.

//Implicitly unwrapped optionals exist because sometimes a variable will start life as nil, but will always have a value before you need to use it. Because you know they will have a value by the time you need them, it’s helpful not having to write if let all the time.

//That being said, if you’re able to use regular optionals instead it’s generally a good idea.
----
// A function that returns an optional string based on the provided user ID
func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"  // Return a specific username for ID 1
    } else {
        return nil  // Return nil for any other ID
    }
}

// Using the username function with nil coalescing
let user = username(for: 15) ?? "Anonymous"  // ID 15 is not recognized, so default to "Anonymous"

// Print the result
print("User: \(user)")  // Output: "User: Anonymous"

//The nil coalescing operator (??) is a concise way to handle optionals by providing a default value when the optional is nil. This allows for cleaner and safer code, avoiding the need for additional checks or unwrapping. This operator is particularly useful in scenarios where you want to ensure that a variable always has a value, whether from the optional or a specified default
--------------------------------------------t
//op
let names = ["John", "Paul", "George", "Ringo"]

// Using optional chaining to access the first element and uppercase it.
let beatle = names.first?.uppercased()

// Output: Optional("JOHN")
print(beatle)
-----

let names: [String] = []

let beatle = names.first?.uppercased()
print(beatle)  //nil
------
// Define an enum to represent the possible password error.
enum PasswordError: Error {
    case obvious  // Case for an "obvious" password (e.g., "password").
}

// Define a function that checks the password and can throw an error.
func checkPassword(_ password: String) throws -> Bool {
    // If the password is "password", throw an obvious password error.
    if password == "password" {
        throw PasswordError.obvious
    }
    // If no error is thrown, return true (password is considered valid).
    return true
}

// Using do-try-catch to handle potential errors from the checkPassword function.
do {
    try checkPassword("password")  // Try checking the password.
    print("That password is good!")  // If no error is thrown, print this message.
} catch {
    // If an error is thrown, print a message saying the password can't be used.
    print("You can't use that password.")
}

// Using try? to convert the throwing function into an optional result.
if let result = try? checkPassword("password") {
    // If the function does not throw, it returns true wrapped in an optional.
    print("Result was \(result)")
} else {
    // If an error is thrown, result is nil, and this block is executed.
    print("D'oh.")
}

// Using try! to force unwrap the result, assuming no error will be thrown.
try! checkPassword("sekrit")  // If this throws an error, the app will crash.
print("OK!")  // If no error is thrown, this message will be printed.
--
try: Use when you want to handle errors explicitly with do-catch.
try?: Use when you're okay with converting errors to nil and handling success/failure as an optional.
try!: Use only when you're 100% sure the function won't fail, as it will crash if an error is thrown.
-------
let str = "5"
let num = Int(str)
// Define a struct called 'Person' that represents a person with an 'id'.
struct Person {
    var id: String  // A stored property 'id' of type String to hold the person's ID.
    
    // Failable initializer that attempts to initialize a Person with an ID.
    init?(id: String) {
        // Check if the provided 'id' has exactly 9 characters.
        if id.count == 9 {
            self.id = id  // If the condition is met, assign the 'id' to the property.
        } else {
            // If the 'id' does not have exactly 9 characters, initialization fails, returning nil.
            return nil
        }
    }
}
-----
class Animal { }

class Dog: Animal {
    func bark() {
        print("Woof!")
    }
}

class Cat: Animal {
    func meow() {
        print("Meow!")
    }
}

// Create an array of Animal objects, but some are actually Dogs and some are Cats.
let animals: [Animal] = [Dog(), Cat(), Dog()]

// We want to call specific methods like bark() and meow() on the objects in the array.
// To do this, we need to typecast to the correct subclass.
for animal in animals {
    if let dog = animal as? Dog {  // Safe downcasting to Dog
        dog.bark()  // If the cast succeeds, call the bark method.
    } else if let cat = animal as? Cat {  // Safe downcasting to Cat
        cat.meow()  // If the cast succeeds, call the meow method.
    }
}

------
