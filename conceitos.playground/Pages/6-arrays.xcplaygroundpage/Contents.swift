//: [Previous](@previous)

import Foundation

// Exemplos simples de array
var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

// Índice 0
print(beatles[0])

// append: Adicionando items
beatles.append("Jimmy")
print(beatles)

// ⚠️ observação: Só é possível adicionar dados do mesmo tipo que o array ja possuí
//temperatures.append("Celsius")

// ⚠️ TYPE SAFETY: Não é possível fazer operçãões com diferentes tipos de dados
let firstBeatle = beatles[0]
let firstNumber = numbers[0]
//let notAllowed = firstBeatle + firstNumber

// Definindo o tipo de um array manualmente.
// observação o swift sabe fazer isso automaticamente se definirmos um dado ele identifica o tipo

// Array de inteiros
var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])

// Array de strings
var albums = Array<String>()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")

// Funcionalidade de arrays

// count: Contando os items de um array
print(beatles.count)

// remove: Removendo um item pelo índice
beatles.remove(at: 2)

// removeAll(): removendo todos os items
temperatures.removeAll()

// contains: Identificando um conteúdo específico -> retorna um boolean
print(beatles.contains("Paul"))

// sorted: Classificar uma matriz -> Retorna os items em ordem crescente com base nas letras do alfabeto
let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())

// reversed: Reverter um array
let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)
