//: [Previous](@previous)

import Foundation


// instruções, que nos permitem verificar uma condição e executar algum código se a condição for verdadeira. Elas se parecem com isso:
// IF - SE
// {} - Blocos de código
// Código dentro do bloco de código é a instrução a ser executada caso a instrução for verdadeira

// Exemplo:

let score = 85

if score > 80 {
    print("Você está na nota de corte!")
}

// Exemplo:

let spped = 88
let percentage = 85
let age = 18

if spped >= 88 {
    print("Where we're going we don't need roads.")
}

if percentage < 85 {
    print("Sorry, you failed the test.")
}

if age >= 18 {
    print("You're eligible to vote")
}

// Vamos verificar se o usuário tiver o nome em ordem alfabetica que vem depois do amigo, coloque o do amigo em primeiro lugar.
// Operadores lógicos (<,>) funcionam com strings tb !

let ourName = "Antonio"
let friendName = "João"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}
    
if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}

// Exercicio: Se adicionar um número a um array fizer com que ele tenha MAIS DE 3 ITENS remova o mais antigo!!!
// Usaremos o que aprendemos: append(), coun e remove(at:)

var number = [1,2,3]

number.append(4)

if number.count > 3 {
    number.remove(at: 0)
}

print(number)

// Operadores de comparação:
// ==: igual
// !=: diferente

let country = "Canada"

if country == "Australia" {
    print("G'day!")
}

let name = "Taylor Swift"

if name != "Anonymous" {
    print("Welcome, \(name)")
}


// verificar se o nome do usuario esta vazio

var username = "@taylorswift"

if username == "" {
    username = "Anonymus"
}

print("Welcome, \(username)")

// Comparar uma string a outra não é uma boa maneira pois não é performatico !

//Forma correta ->

if username.count == 0 {
    username = "Anonymus"
}

// O swift vai percorrer todas as letras uma por uma e o custo pode seer alto se a string for enorme
// Para resolver isso o swift nos entrega o isEmpty

if username.isEmpty == true {
    username = "Anonymous"
}

// else: A condição que satisfaz se a primeira não for verdadeira !
// Usando o else o swift só precisa verificar uma vez a idade

let age2 = 16

if age2 >= 18 {
    print("You can vote in the next election.")
} else {
    print("Sorry, you're too young to vote.")
}


// else - if
// Ela permite a execução de uma nova condição se a primeira falhar

// ⚠️ Você pode continuar adicionando mais e mais else ifcondições se quiser, mas tome cuidado para que seu código não fique muito complicado!

let a = false
let b = true

if a {
    print("Code to run if a is true")
} else if b {
    print("Code to run if a is false but b is true")
} else {
    print("Code to run if both a and b are false")
}

// Verificações aninhadas

let temp = 25

if temp > 20 {
    if temp < 30 {
        print("It's a nice day.")
    }
}

// Embora isso funcione bem o swift oferece soluções mais curtas !
// &&: e
// ||: ou

if temp > 20 && temp < 30 {
    print("It's a nice day.")
}


let userAge = 14
let hasParentalConsent = true

if userAge >= 18 || hasParentalConsent {
    print("You can buy the game")
}


// Para finalizar a verificação de múltiplas condições, vamos tentar um exemplo mais complexo que combina if, else if, elsee ||tudo ao mesmo tempo, e ainda mostra como as enumerações se encaixam nas condições.
//
// - Neste exemplo, criaremos um enum chamado TransportOption, que contém cinco casos: avião, helicóptero, bicicleta, carro e scooter. Então, atribuiremos um valor de exemplo a uma constante e executaremos algumas verificações:
//
// - Se formos a algum lugar de avião ou helicóptero, imprimiremos “Vamos voar!”
// - Se formos de bicicleta, escreveremos “Espero que haja uma ciclovia…”
// - Se formos de carro, imprimiremos “Hora de ficar preso no trânsito”.
// - Caso contrário, imprimiremos “Vou alugar uma scooter agora!”

enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly!!")
} else if transport == .bicycle {
    print("I hope there's a bike path")
} else if transport == .car {
    print("Time to get stuck in traffic")
} else {
    print("I'm going to hire a scooter now!")
}


