import UIKit

var greeting = "Hello, playground 2"
//Write a Swift function that accepts a string as input and returns true if it is a palindrome, ignoring spaces and punctuation, and false otherwise. Discuss your approach and any edge cases you considered.

func makeFuncntion(_ name: String) -> Bool {
    var result = ""
    for val in name.reversed() {
        result.append(val)
    }
    if name == result {
        return true
    }
    return false
}

print(makeFuncntion("madam"))





























