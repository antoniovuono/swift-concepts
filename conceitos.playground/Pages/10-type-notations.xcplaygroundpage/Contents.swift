//: [Previous](@previous)

import Foundation

// O swift deteca automaticamente o tipo de dado atribuido a uma variável ou constante !
// Muitas vezes queremos substituir o valor atribuido ou subsituir a escolha que o swift toma e é ai que entra as type notations !

// inferencia de tipo: Quando o swift detecta automaticamente

var example = "String" // type string

// type notations: As anotações de tipo nos permitem ser explícitos sobre quais tipos de dados queremos e se parecem com isto:
let surname: String = "Lasso"
var score: Int = 0

// As vezes queremos escolher um tipo diferente: Vamos supor que o score possa também ser um decimal
var score2: Double = 0

// Revisando os tipos de dados aplicando a inferência de tipo:

let playerName: String = "Mario"
var luckyNumber: Int = 7
let pi: Double = 3.141
var isAuthenticated: Bool = true
var albums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["id": "@twostraws"]
var books: Set<String> = ["The Alchemist", "The Da Vinci Code"]

// types notations são necessário quando queremos definir quando queremos montar listas vazias. O swift não conseguiria ler o dado para inferir automaticamente exemplo
var teams: [String] = [String]()
teams.append("Palmeiras")
print(teams)

// Algumas pessoas preferem adicionar notações de tipo e definir o array dessa forma:
var teams2: [String] = []

// O profesor prefere usar a inferência de tipos sempre que possível:
var dogs = [String]()
dogs.append("Bibi")

// Type annotations de um enum
// Os valores de uma enumeração seguem os mesmos tipos da própria enum
enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light


// Quando usar inferência ?
// O swift é inteligente então quando a gente criar um dado e atribuir um valor ele entende sozinho
// O ideal é user type annotation quando não temos um valor atribuido ao dado no momento da criação

let username: String
// lots of complex logic
username = "@twostraws"
// lots more complex logic
print(username)

// Quando usar a inferênica e quando usar type ?
// A reposta é pessoal o Paul prefere usar inferência o máximo possívle por deixar o código mais limpo
