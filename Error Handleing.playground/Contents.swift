import UIKit

enum LengthErrors : Error {
    case maxLength                   //define errors
    case minLength
}

func checkPassLength (length : Int) throws -> String { // this method happens errors
    if length < 7 {
        print("length is less than 7")
        throw LengthErrors.minLength
    } else if length > 15 {
            print("length is greater than 15")
            throw LengthErrors.maxLength
        }
    return "length is valid"
    }
   //do catch
//do {
//    var passwordLength = try checkPassLength(length: 17)
//    print(passwordLength)
//}
//catch {
//    LengthErrors.maxLength
//    print("error : please enter the password less than 15")
//}


//catch {
//    print(error)
//}


// try?

if let  passwordLength = try? checkPassLength(length: 17)   {
    print(passwordLength) }
