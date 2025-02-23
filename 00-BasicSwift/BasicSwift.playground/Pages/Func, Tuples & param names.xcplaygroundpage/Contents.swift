import Cocoa

func timesTables(number: Int) -> String{
    var table = ""
    for i in 1...10{
        table += "\(i) x \(number) = \(i*number)\n"
    }
    return table
}
print(timesTables(number: 1))


func areLettersIdentical(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted() //Single line functions don't require RETURN
}

//TUPLES

func getUser() -> (firstName: String, lastName: String) {
    ("Marques", "Brownlee")
}

let (firstName, lastName) = getUser() //Split values of returned tuple for easier access
print("Name: \(firstName) \(lastName)")

//We can just extract relevant values from tuple and ignore the rest
let (firstName2,  _) = getUser()
print("Name: \(firstName2)")

//Custom Params
func isUppercase(_ string: String) -> Bool {//The _ to remove external name of the param
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string)

//Double Param Name
func timesTables2(for number: Int) -> String{
    var table = ""
    for i in 1...10{
        table += "\(i) x \(number) = \(i*number)\n"
    }
    return table
}

print(timesTables2(for: 3))


