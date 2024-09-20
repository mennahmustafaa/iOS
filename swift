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

