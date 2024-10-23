//: [Previous](@previous)

import Foundation

// Problema clássico de ciencia da computação
// fizz buzz: em sido usado em entrevistas de emprego, testes de admissão à universidade e muito mais desde que me lembro.

for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5){
        print("\(i): FizzBuzz")
    } else if i.isMultiple(of: 3) {
        print("\(i): Fizz")
    } else if i.isMultiple(of: 5) {
        print("\(i): Buzz")
    } else {
        print("\(i)")
    }
}
