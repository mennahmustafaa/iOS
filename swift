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


