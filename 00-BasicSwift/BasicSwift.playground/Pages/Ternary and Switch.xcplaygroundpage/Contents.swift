import Cocoa

enum Weather{
    case sun, rain, wind, snow
}

var forecast = Weather.rain
switch forecast{
case .sun:
    print("Sunny")
case .rain:
    print("Rainy")
case .wind:
    print("Cold")
case .snow:
    print("Stay home")
}

// Ternary Operator

let age = 18
//    WTF       What?     TRUE   FALSE
let canVote = age >= 18 ? "Yes" : "No"
print(canVote)




