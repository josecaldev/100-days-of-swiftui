import Cocoa

//Closure -> A chunk of code
let sayHello = {(name: String) -> String in
    "Hi \(name)!"
}

print(sayHello("John"))


let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

// Use custom sort with NORMAL FUNCTION
func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}
//let captainFirstTeam = team.sorted(by: captainFirstSorted)
//print(captainFirstTeam)

// Use custom sort with CLOSURE
let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
})

//Decluttering the closure
let updatedClosure = team.sorted{ a, b in
    if a == "Suzanne" {
        return true
    } else if b == "Suzanne" {
        return false
    }
    return a < b
}

let reverseSort = team.sorted{ $0 > $1 }
print(reverseSort)

let tOnly = team.filter{ $0.hasPrefix("T")}
print(tOnly)

let uppercaseTeam = team.map{$0.uppercased()}
print(uppercaseTeam)

// Accept functions as parameters
func makeArray(size: Int, using generator: () -> Int) -> [Int]{
    var numbers = [Int]()
    
    for _ in 0..<size{
        let newNumber = generator()
        numbers.append(newNumber)
    }
    return numbers
}

let resultNumbers = makeArray(size: 5){Int.random(in: 1...10)}
print(resultNumbers)



func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}

print("= = = = = = = = = = = = ")
print()

//CHECKPOINT 5 MY SOLUTION

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let oddNumbers = luckyNumbers
    .filter{ $0 % 2 != 0}
    .sorted()
    .map{"\($0) is a lucky number"}

for oddNumber in oddNumbers {
    print(oddNumber)
}

//CHECKPOINT 5 IMPROVED SOLUTION
print()
let improvedOddNumbers = luckyNumbers
    .filter{ $0 % 2 != 0}
    .sorted()
    .map{print("\($0) is a lucky number")}

print(improvedOddNumbers) //The array is empty since  print() has no return. Works "empties" the array
