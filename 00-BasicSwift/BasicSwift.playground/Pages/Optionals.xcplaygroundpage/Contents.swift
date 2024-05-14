import Cocoa

//let opposites = ["Mario": "Wario", "Luigi": "Waluigi"]
//let peachOpposite = opposites["Peach"]
//print(peachOpposite)
//
////Safely UNWRAP an option
//if let marioOpposite = opposites["Mario"] {
//    print("Mario's opposite is \(marioOpposite)")
//}
//
//
//func square(number: Int) -> Int{
//    number * number
//}
//
//var number: Int? = nil
//
//if let number = number{
//    //Run if 'number' have a value inside
//    print(square(number: number))
//}
//
////guard let unwrapped = number else {
////    //Run if 'number' doesn't have a value inside
////    //Can be used to check any inputs before any operation
////    print("Missing value")
////    return
////}
//
//// NIL COALESCING
//let new  = opposites["Bowser"] //'new' will become a String?
//let new2  = opposites["Bowser"] ?? "N/A" // -> Will set "N/A" to new
//
//let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
//let favorite = tvShows.randomElement() ?? "None"
//
//struct Book {
//    let title: String
//    let author: String?
//}
//
//let book = Book(title: "Beowulf", author: nil)
//let author = book.author ?? "Anonymous"
//
//let input = ""
//let number2 = Int(input) ?? 0
//
////OPTIONAL CHAINING
//let names = ["Arya", "Bran", "Robb", "Sansa"]
//
//let chosen = names.randomElement()?.uppercased() ?? "No one"
//print("Next in line: \(chosen)")
//
//
//struct Book2 {
//    let title: String
//    let author1: String?
//}
//
//var book3: Book2? = nil
//let author2 = book3?.author1?.first?.uppercased() ?? "A"
//print(author2)
//
////TRY? -> To just try something and know whether it works or not
//
//enum UserError: Error {
//    case badID, networkFailed
//}
//
//func getUser(id: Int) throws -> String {
//    throw UserError.networkFailed
//}
//
//if let user = try? getUser(id: 23) {
//    print("User: \(user)")
//}
//
//let user = (try? getUser(id: 23)) ?? "Anonymous"
//print(user)

let array1 = [1, 2, 3, 4, 5]
let array2 = [Int]()


let optFunc = { (array: [Int]?) -> Int in array?.randomElement() ?? Int.random(in: 1...100) }

print(optFunc(array2))
