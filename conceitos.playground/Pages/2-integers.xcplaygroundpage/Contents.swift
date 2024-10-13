//: [Previous](@previous)

import Foundation

let score = 10

// Usando casas exemplo: 100.000.000
let realyBig = 100_000_000
//or
let reallyBig = 1_00__00___00____00

// arithmetic operators
let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2

// Modificando o número da variável atual
var number = 10
number + 5

// Operadores abreviados: operadores de atribuição compostos
var counter = 10
counter += 5
print(counter)
counter *= 2
print(counter)
counter -= 10
print(counter)
counter /= 2
print(counter)

// isMultipleOff: Operador para descobrir multiplos
print(120.isMultiple(of: 3))
