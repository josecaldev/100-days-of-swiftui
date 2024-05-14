import Cocoa

let filename = "paris.jpg"
print(filename.hasSuffix(".jpg"))

let number = 120
print(number.isMultiple(of: 3))

var auth = false
auth = !auth


var element = 3
var element2 = "a"
var stringResult = String(element) + element2


var element2String: Int? = Int(element2)


var salary = 1000
var job = "iOS Engineer"

var proposal = "I want to become a \(job) with at least \(salary)USD"
print(proposal)

//Checkpoint 1

let caliTempC = 22.0

let caliTempF = caliTempC*9/5+32

print("La temperatura actual en Cali es:")
print("C: \(caliTempC)°")
print("F: \(caliTempF)°")

