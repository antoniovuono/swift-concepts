//: [Previous](@previous)

import Foundation

let firstPart = "Hello, "
let secondPart = "World!"

// Primeira forma de interpolação
let greetings = firstPart + secondPart
print(greetings)

// Segunda forma de interpolação
let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)

// ⚠️ Essa técnica funciona mais para coisas pequenas
// Cada vez que o ele tem que fazer uma nova string delas antes de continuar, e se você tem muitas coisas sendo unidas, é um desperdício.
// por exemplo:

let luggageCode = "1" + "2" + "3" + "4" + "5"

// O Swift não consegue juntar todas essas strings de uma vez. Em vez disso,
// ele juntará as duas primeiras para fazer “12”, depois juntará “12” e “3” para fazer “123”, depois juntará “123” e “4” para fazer “1234”, e finalmente juntará “1234” e “5” para fazer “12345”
//– ele faz strings temporárias para segurar “12”, “123” e “1234” mesmo que elas não sejam usadas quando o código terminar.


// Interpolação de strings: É muito mais eficiente usar a estratégia de interpolação para evitar que ele una uma por uma

let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)
