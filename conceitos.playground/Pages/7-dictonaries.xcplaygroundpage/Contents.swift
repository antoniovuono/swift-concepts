//: [Previous](@previous)

import Foundation

// Os arrays são bons quando não temos problemas em ter itens duplicados ou quando não temos a necessidade de buscar um item específico.
// Eles nos permitem apenas buscar por índice o que não traz uma certa garantia que o item desejado está no índice informado.


// Para resolver esse problema surgiram os Dictonaries
// Dictonaries não armazenam itens de acordo com sua posição, em vez disso nos deixam decidir onde os itens devem ser armazenados

// Criando primeiro Dicionário

let employee = ["name": "Taylor Swift", "job": "Singer", "location": "Nashville"]
print(employee)

// Procurnado pela chave
print(employee["job"])

// Optional: O swift diz que quando fazemos a leitura de um dicionário podemos ter um retorno ou não pode obter nenhum dado registrado
// ⚠️ O swift vai trazer uma mensagem obscura: Expressão implicitamente coagida de 'String?' para 'Any'” -> mas o significaod é que os dados podem ou não existir.

// Tipando com um padrão
print(employee["name", default: "Unknown"])
print(employee["job", default: "Unknown"])
print(employee["location", default: "Unknown"])

// Criando dicionários com outros tipos:

let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false,
]

var olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]

print(olympics[2012, default: "Unknown"])

// Criando um dicionário vazio e atribuindo tipos manualmente

var heights = [String: Int]()
heights["Antonio"] = 178
heights["LeBron James"] = 206
heights["Kobe Bryant"] = 200

print(heights["Antonio"]!)


// Funcionalidades:

//count: contagem
let graduetaedStudents = hasGraduated.count
print(graduetaedStudents)

// removeAll: removendo todos
olympics.removeAll()
print(olympics)
