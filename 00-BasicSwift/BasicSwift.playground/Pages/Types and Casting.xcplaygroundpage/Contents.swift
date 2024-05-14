import Cocoa

var juniorSalary = "low"
let learning = "constant"

var description = """
I am a Calisthenics \"expert\" 
as long as no one sees me
"""

print(juniorSalary, learning)
print(description.count)
print(description)

//= = = = = = = = = = = =  = = =

let minimumSalary = 1000
let seniorSalary = 100_000_000
//The underscore used only for human reading ease

let cubedSalary = minimumSalary ^ 3
print(cubedSalary)

let number = 0.1 + 0.2
print(number)

// CASTING NUMBER TYPES
let a = 1
var b = 3.0
let c = Double(a) + b
let d = a + Int(b)

b -= 2.0

// = = = = = = = =
var rawString = #"The rain in from the "clouds" are always good"#
print(rawString)


