//: [Previous](@previous)

import Foundation

//loops: while
// O while executa continuamento o corpo do loop até que uma condição pré-definida seja falsa.
// ⚠️ Embora eles apareçam de vez em quando, eles não são tão utilizados como o for ...

var countdown = 10

while countdown > 0 {
    print("\(countdown)...")
    
    countdown -= 1
}

print("Blast off")

// random: Dê a isso um intervalo de números para trabalhar, e ele enviará de volta um aleatório Intou Doublealgo dentro desse intervalo.
// Recurso dos tipos Int e Double que percorre um loop e retorna um número aleatório

let id = Int.random(in: 1...1000)
print(id)

let amount = Double.random(in: 0...1)
print(amount)

// example: Podemos usar essa funcionalidade com um whileloop para rolar alguns dados virtuais de 20 lados repetidamente, encerrando o loop somente quando um 20 for rolado — um golpe crítico para todos os jogadores de Dungeons & Dragons.

// create a integer to store our roll
var roll = 0

// carry on looping until we reach 20

while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

print("Critical hit!")
