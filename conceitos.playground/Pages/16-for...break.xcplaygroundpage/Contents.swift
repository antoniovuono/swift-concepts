//: [Previous](@previous)

import Foundation

// continue: pula a iteração atual do loop
// Nesse contexto ele analisa as extensões que não são txt e pula

let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }

    print("Found picture: \(filename)")
}

// break: pula todas a iterações restantes
// Nesse código ele acha os 10 números e usa o break para sair do loop

let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)

        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)
