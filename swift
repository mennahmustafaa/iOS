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
