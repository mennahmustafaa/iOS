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
