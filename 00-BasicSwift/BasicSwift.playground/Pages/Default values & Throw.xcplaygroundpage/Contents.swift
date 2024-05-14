import Cocoa

func rollDice(sides: Int = 6) -> Int { //Default value of 6
    Int.random(in: 1...sides)
}

print(rollDice(sides: 12))
print(rollDice())


enum PasswordError: Error{
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 { throw PasswordError.short}
    if password == "12345" { throw PasswordError.obvious}
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let pass = "12345"

do{
    let result = try checkPassword(pass)
    print("Password rating: \(result)")
}catch PasswordError.short{
    print("Use longer Password")
}catch PasswordError.obvious{
    print("Obvious Password, try another one!")
}catch{
    print("There was an error")
}

//CHECKPOINT 4
print("= = = = = = = = = ")

enum SqrtErrors: Error{
    case outOfBounds, noRoot
}
let numberRange = 1...10_000

func sqrtCustom(_ number: Int) throws -> Int {
    if(!numberRange.contains(number)){
        throw SqrtErrors.outOfBounds
    }
    if number == 1 {return 1}
    
    var i = 1, times = 1, remain = number
    
    repeat{
        remain = remain - i
        i+=2
        times+=1
    }while (remain-i > 0)
    
    if remain-i < 0 {
        throw SqrtErrors.noRoot
    }else{
        
        return times
    }
    
}

func sqrtBrute(_ number: Int) throws -> Int{
    if(!numberRange.contains(number)){throw SqrtErrors.outOfBounds}
    for i in 1...100 {
        if i*i == number {return i}
    }
    throw SqrtErrors.noRoot
}

do{
    let input = 10000
    let result = try sqrtCustom(input)
    print("The sqrt of \(input) is \(result)")
}catch SqrtErrors.outOfBounds{
    print("Enter a number between 1 and 10.000")
}catch SqrtErrors.noRoot{
    print("The entered number doesn't have an Integer root")
}




