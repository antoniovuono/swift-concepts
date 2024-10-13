//: [Previous](@previous)

import Foundation

let number = 0.1 + 0.2

// O swift não permite que a gente misture decimáis (Doubles). Os decimais não são 100% precisos como
// os inteiros e por isso o Swift não permite que os misture ao menos que você peça especificamente para isso acontecer.

// ⚠️ Tentativa de somar um inteiro ao decimal: Vai retornar um erro
let a = 1
let b = 2.0

// Para realizar essa operação precisamos converter os números para tipos iguais!

// Convertendo double para Integer
let sum2 = a + Int(b)

// Convertendo o Integer para Double:
let sum3 = Double(a) + b

// O swift exige que um dado só pode ser modificado por outro do mesmo tipo:
// ⚠️ Nesse caso vai dar erro: Cannot assign value of type 'Int' to type 'String'
var name = "Swift"

// Muitas APIs antigas utilizam uma maneira diferente de armazenar decimais: CGFloat
// O swift permite usar Double para todos os lugares que exigem dados do tipo antigo.
