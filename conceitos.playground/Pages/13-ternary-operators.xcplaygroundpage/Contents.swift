//: [Previous](@previous)

import Foundation

// Operadores binários: +.-. == ...
// São operadores que trabalham com duas partes de entrada. exemplo: 2 + 5


// Operadores ternários: São operadores que trabalham com três partes de entrada.
// Eles nos permitem verificar uma condição e retornar dois valores:
// 1 - Retorna algo se a condicação for verdadeira
// 2 - Retorna algo se a condição for falsa.

let age = 18

let canVote = age >= 18 ? "Yes" : "No"
print(canVote)

let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")

let name = ["Antonio", "Kayle", "Mal"]

let crewCount = name.isEmpty ? "No One": "\(name.count) people"
print(crewCount)

enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)
