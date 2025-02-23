import Cocoa

var juniorSalary = "low"
let learning = "be constant"

var description = """
I am a Calisthenics \"expert\" 
as long as no one sees me
"""

print(juniorSalary, learning)
print(juniorSalary.uppercased())
print(learning.count)
print(learning.hasPrefix("be"))


print(description)

//= = = = = = = = = = = =  = = =


let seniorSalary = 100_000_000
//The underscore used only for human reading ease

let minimumSalary = 1000
let cubedSalary = pow(Double(minimumSalary), 2) // ^ is XOR in Swift, no exponential
print(cubedSalary)

let number = 0.1 + 0.2
print(number)

// CASTING NUMBER TYPES
let a = 1
var b = 3.0
let c = Double(a) + b
let d = a + Int(b)

let e = 3.141592653
print("e: ", Int(e))

b -= 2.0

// = = = = = = = =
var rawString = #"The rain in from the "clouds" are always good"#
print(rawString)


