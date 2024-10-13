import UIKit

let actor = "Denzel Washington"

// Using double quotes inside a string
let quote = "Then he tapped a sign saying \"Believe\" and walked away."

// Multi-lines string
let movie = """
A day in
the life of an
Apple engineer
"""

// Count the number of character for strings
let nameLength = actor.count
print("\(actor) has \(nameLength) characters.")

// Uppercased strings
let name = "antonio"
print(name.uppercased())

// hasPrefix: permite saber se a string começa com algum texto informado
print(movie.hasPrefix(("A day")))
// hasSufix: permite saber se a string termina com o texto informado
print(movie.hasSuffix("Apple engineer"))
