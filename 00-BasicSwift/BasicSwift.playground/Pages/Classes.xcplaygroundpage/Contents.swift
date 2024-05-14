import Cocoa

class Employee {
    let hours: Int

    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}

class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}



class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric:Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

var porscheTarga = Car(isElectric: false, isConvertible: true)
print(porscheTarga.isElectric)


//DE-INITIALIZER

class User {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}

var users = [User]()

for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}

print("Loop is finished!")
users.removeAll()
print("Array is clear!")



// CHECKPOINT 7

class Animal{
    let legs: Int
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal{
    init(){
        super.init(legs: 4)
    }
    
    func speak(){
        print("WOAF!")
    }
}

class Corgi: Dog{
    override func speak(){
        print("Corgi wuf!")
    }
}

class Poodle: Dog{
    override func speak(){
        print("Poodle guaf!")
    }
}

class Cat: Animal{
    init(){
        super.init(legs: 4)
    }
    
    func speak(){
        print("Miau")
    }
}

class Persian: Cat {
    override func speak(){
        print("Miau <3")
    }
}

class Lion: Cat {
    override func speak(){
        print("ROAAARRRRR!!!!")
    }
}

let dog = Dog()
let corgi = Corgi()
let poodle = Poodle()
let cat = Cat()
let persian = Persian()
let lion = Lion()
dog.speak()
corgi.speak()
poodle.speak()
cat.speak()
persian.speak()
lion.speak()



