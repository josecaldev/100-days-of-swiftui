import Cocoa

protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    var name = "Car"
    var currentPassengers: Int = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }

    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }

    func openSunroof() {
        print("It's a nice day!")
    }
}

struct Bicycle: Vehicle {
    var name = "Bicycle"
    var currentPassengers: Int = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }

    func travel(distance: Int) {
        print("I'm cycling \(distance)km.")
    }
}


func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

func getTravelEstimates(using vehicles: [Vehicle], distance: Int){
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}

let car = Car()
commute(distance: 100, using: car)

let bike = Bicycle()
commute(distance: 50, using: bike)

getTravelEstimates(using: [car, bike], distance: 150)


//OPAQUE RETURN TYPES
//func showView() -> some View{}
//func getRandomNumber() -> some Equatable{}

//Extensions
struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
}

extension Book{
    init(title: String, pageCount: Int) {
            self.title = title
            self.pageCount = pageCount
            self.readingHours = pageCount / 50
        }
}

let hp = Book(title: "Harry Potter", pageCount: 700)
let lotr = Book(title: "Lord of the Rings", pageCount: 1178, readingHours: 24)

//By placing the custom initializer on a extension we keep the Swift automatic memberwise initializer

//Protocol Extensions

extension Collection { //Collection is the protocol of Array, Set, Dictionary...
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

let guests = ["Mario", "Luigi", "Peach"]

if guests.isNotEmpty{
    print("Guest count: \(guests.count)")
}

protocol Person {
    var name: String { get }
    func sayHello()
}
extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}
struct Employee: Person {
    let name: String
    // Theres no need to implement sayHello() here,
    //   because it gets it from the extension
}

let taylor = Employee(name: "Taylor Swift")
taylor.sayHello()

//Protocol Extensions Advanced

extension Numeric{
    func squared() -> Self{
        self * self
    }
}

let wholeNumber = 5
print(wholeNumber.squared())


struct User: Equatable, Comparable{
    //Swift will make the struct Equatable by comparing all
    //   properties of our struct whenever compared
    let name: String
    //We implement our own to make use of < and >
    static func<(lhs: User, rhs: User) -> Bool{
        lhs.name < rhs.name
    }
}

let user1 = User(name: "Link")
let user2 = User(name: "Zelda")
print(user1 == user2)
print(user1 != user2)
print(user1 < user2)

//CHECKPOINT 8
print(" = = = = = = = = = = ")
print("")

protocol Building{
    var rooms: Int { get set }
    var cost: Int { get set}
    var sellerName: String  { get set}
    func summary() -> String
}

extension Building{
    func summary() -> String{
        "This Building has \(self.rooms) rooms. It's sold by \(self.sellerName) at \(self.cost)"
    }
}

struct House: Building{
    var rooms: Int
    var cost: Int
    var sellerName: String
}

struct Office: Building{
    var rooms: Int
    var cost: Int
    var sellerName: String
}

let eden = House(rooms: 4, cost: 250_000, sellerName: "Liliana Holguin")
let perf = House(rooms: 20, cost: 950_000, sellerName: "Maritza Holguin")

print(eden.summary())
print(perf.summary())
