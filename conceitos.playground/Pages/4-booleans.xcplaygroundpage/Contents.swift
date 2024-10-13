//: [Previous](@previous)

import Foundation

// Porque o nome booleans: Se você estava curioso, os Booleanos foram nomeados em homenagem a George Boole, um matemático inglês que passou muito tempo pesquisando e escrevendo sobre lógica.

let filename = "paris.jpg"
print("Esse arquivo tem o sufixo: \(filename.hasSuffix(".jpg"))")

// Os booleanos tem apenas o operador: !
// !: Negação. (Inverte o valor de true para false)

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)


// toggle: Podemos o toggle para inverter o valor de um boolean

var gameOver = false
print(gameOver)

gameOver.toggle()
print(gameOver)
