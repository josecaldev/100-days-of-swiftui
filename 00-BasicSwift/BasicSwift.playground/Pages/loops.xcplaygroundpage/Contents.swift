import Cocoa

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms{
    print("Swift works great on \(os)")
}

let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)

var roll = 0

while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

print("Critical hit!")

let filenames = ["me.jpg", "work.txt", "sophie.jpg"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    print("Found picture: \(filename)")
}
    
let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2){
        multiples.append(i)
        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)


print(" = = = = = = FIZZBUZZ EXERCISE = = = = = = ")
print("")

for i in 1...100 {
    var result = "\(i)"
    if i.isMultiple(of: 3){
        result = "FIZZ"
    }
    if i.isMultiple(of: 5){
        if result.count < 4 {
            result = "BUZZ"
        }else{
            result += "BUZZ"
        }
    }
    print(result)
}

print(" = = = ANOTHER SOLUTION TO FIZZBUZZ = = = ")
print("")

for i in 1...100{
    switch(i.isMultiple(of: 3), i.isMultiple(of: 5)){
    case (true, true):
        print("FIZZBUZZ")
    case (true, false):
        print("FIZZ")
    case (false, true):
        print("BUZZ")
    default:
        print(i)
    }
}



