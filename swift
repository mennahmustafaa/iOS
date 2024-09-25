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

