import Cocoa

print("Hello")

//ARRAYS
var beatles = ["John", "Paul", "George", "Ringo"]
var numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]


var mixed = Array<Any>()
mixed = [25, "Paul", 25.4]

var emptyArr1 = [String]()
var emptyArr2 = Array<String>()
var emptyArr3: [String] = []
var emptyArr4: Array<String> = []

print("The beatle \(beatles[0]) is \(mixed[2]) years old")

//Dictionaries
let employee = [
    "name": "Jose",
    "job": "iOS Engineer",
    "zipCode": "760031",
    "location": "remote"
]

print(employee)
print(employee["location", default: "Unknown"])

var heights = [String: Int]()
heights["Lebron James"]=206

//Sets
let actors  = Set(["Denzel", "Tom", "Cage", "Cruise"])
print(actors)

//Enums
enum Weekday{
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
}

var day = Weekday.monday
day = .monday //It nows day is of "type" Weekday
day = .saturday

//Checkpoint 2

var cars = ["911", "Cayman", "Taycan", "Macan", "Cayenne", "Panamera", "Cayman", "Taycan", "GT3RS"]

print(cars.count)

var unique = Set(cars)
print(unique.count)
