//: [Previous](@previous)

import Foundation

// funções são blocos de códigos que definimos um nome e executamos separadamente.
// benefício: reaproveitar blocos de códigos e tornar o código mais limpo.

// exemplos:

//print("Welcome to my app!")
//print("By default This prints out a conversion")
//print("chart from centimeters to inches, but you")
//print("can also set a custom range if you want.")

// Abstraindo dentro de uma função para usar
// - no inicio do app
// - quando clicarem em um botão de ajuda

func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

// executando uma função:
showWelcome()

// Parâmetros: São dados que podemos passar para personalizar a interação com a função

func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(number) x \(i) = \(i * number)")
    }
}

// Parametros & Argumentos:
// Parametros: Espaço reservado
// Argumentos: Valores reais

// ⚠️ É necessário passar a ordem exata de parâmetros a qual foi definida na criação da função.

// number, end: parametro
// 2, 20: argumentos
printTimesTables(number: 2, end: 20)


// Retornando valores:

// As vezes queremos retornar dados de volta em uma função, exemplo:
// retornar a raiz quadrada

let root = sqrt(169)

print(root)


// Requisitos de retorno:
// 1 - Abra uma seta indicando o tipo do dado que quer retornar.
// 2 - Use a palavra return para enviar seus dados de volta.

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

// Exercicio
// Crie uma função que receba dois parametros do tipo string e retorne um boolean caso as strings contenham as mesmas letras

func areLettersIdentical(string1: String, string2: String) -> Bool {
    let firt = string1.sorted()
    let second = string2.sorted()
    
    return firt == second
}

areLettersIdentical(string1: "abc", string2: "cba")

// Reduzindo o código:
// ⚠️ Quando a função retorna um tipo e tem uma linha de código podemos não usar o return

func areLettersEquals(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}

areLettersEquals(string1: "abc", string2: "cba")

// Retornando Multiplos valores:

func getUser() -> [String: String] {
    [
        "firstName": "Taylor",
        "lastName": "Swift"
    ]
}

let user = getUser()

print("Name \(user["firstName", default: "Anonymous"]) \(user["lastName", default: "Anonymous"])")

// Tuplas: Assim como arrays e dicionários tuplas nos permitem colocar vários pedaços de dados em uma única variável, mas diferentemente dessas outras opções
// Tuplas tem o tamanho fixo
// Tuplas podem ter uma variedade de tipos de dados

func getUserInfo() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let singer = getUserInfo()

print("Name: \(singer.firstName) \(singer.lastName)")

// Diferenças entre tuplas e dicionários:
// 1-Em dicionários o Swift não sabe dizer se o valor pode estar vazio, logo precisariamos enviar um valor padrão
// 2-Quando a gente acessa um valor de uma tupla o Swift sabe que o valor está disponível
// 3-Acessamos valores usando user.firstName: não é uma string, então também não há chance de erros de digitação.
// 4-Nosso dicionário pode conter centenas de outros valores além de "firstName", mas nossa tupla não pode – devemos listar todos os valores que ele conterá e, como resultado, é garantido que ele conterá todos eles e nada mais.

// Informações sobre tuplas:

// 1 - Se a gente retornar uma tupla de uma função o Swift já sabe os nomes que você está dando a cada item na tupla, lgoo não precisamos repetilos ao usar o return

func getBrand() -> (car: String, brand: String) {
    ("Fiesta", "Ford")
}

let car1 = getBrand()

print("O carro é o \(car1.car) da marca \(car1.brand).")

// 2 - As vezes vamos receber tuplas onde os elementos não tem nomes, então podemos acessar via indices

let car2 = getBrand()

print("O carro é o \(car2.0) da marca \(car2.1)")

// 3 - Se uma função retorna uma tupla podemos separar em valores individuais caso seja necessário.

let carName = getBrand().car
let brandName = getBrand().brand

print("O carro é o \(carName) da marca \(brandName).")

// Ignorando valores que não precisamos nas tuplas
let (firstName, _) = getUserInfo()
print("Name: \(firstName)")

