import Cocoa

struct Album {
    let title: String
    let artist: String
    let year: Int

    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let x = Album(title: "ActualLife", artist: "Fred", year: 2022)
x.printSummary()

struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0

    var vacationRemaining: Int {
        get{
            vacationAllocated - vacationTaken
        }
        set{
            vacationAllocated = vacationTaken + newValue
        }
        
    }
}

var archer = Employee(name: "Sterling Archer", vacationAllocated: 14)
archer.vacationTaken += 4
print(archer.vacationRemaining)
archer.vacationTaken += 4
print(archer.vacationRemaining)

print()
struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }

        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")


print()
struct Player {
    let name: String
    let number: Int

    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player = Player(name: "Megan R")
print(player)



struct Employee2 {
    let username: String
    let password: String

    static let example = Employee2(username: "cfederighi", password: "hairforceone")
}

struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}

print(AppData.version)

print()
print("= = = = = = = = = = = ")

struct Car{
    let model: String
    let numberSeats: Int
    private(set) var currentGear: Int {
        didSet{
            print("Gear shifted from \(oldValue) to \(currentGear)")
        }
    }
    
    mutating func gearDown(){
        if !(currentGear - 1 < 0) {
            currentGear -= 1
        }
    }
    
    mutating func gearUp(){
        if !(currentGear + 1 > 6) {
            currentGear += 1
        }
    }
}

var tesla = Car(model: "X", numberSeats: 5, currentGear: 0)


