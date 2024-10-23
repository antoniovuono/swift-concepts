//: [Previous](@previous)

import Foundation

// Você viu como os desenvolvedores Swift gostam de nomear seus parâmetros de função, porque isso torna mais fácil lembrar o que eles fazem quando a função é chamada.
//Podemos eescrever uma função para rolar um dado um certo número de vezes, usando parâmetros para controlar o número de lados no dado e o número de rolagens:

// Start with an empty array
// Roll as many dice as needed
// Add each result to our array
// Send back all the rolls

func rollDice(sides: Int, count: Int) -> [Int] {
    // Start with an empty array
    var rolls = [Int]()
    
    // Roll as many dice as needed
    for _ in 1...count {
        let roll = Int.random(in: 1...sides)
        // Add each result to our array
        rolls.append(roll)
    }
    
    // Send back all the rolls
    return rolls
}

let rolls = rollDice(sides: 6, count: 3)
print(rolls)

// Esse método de nomear parâmetros p/ uso externo é tão importante no Swift que ele realmente usa os nomes quando se trata de descobrir qual método usar.


// Nesse caso temos 3 funções identicas
func hireEmployee(name: String) { }
func hireEmployee(title: String) { }
func hireEmployee(location: String) { }

// O swift é inteligente de saber qual eu estou chamando apenas pelo parâmetro
let employee: () = hireEmployee(name: "Antonio")
print(employee)
