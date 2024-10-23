//: [Previous](@previous)

import Foundation

// lopps: for

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

// Para facilitar o entendimento:
// 1 - O código dentro das chaves é chamado de loop
// 2 - Chamamos um ciclo através do corpo do loop de "iteração do loop"
// 3 - A variável os que criamos existe somente dentro do corpo do loop

// o que é uma iteração ?
// Uma iteração é cada execução de um ciclo dentro de um loop, ou seja, cada vez que o bloco de código dentro das chaves {} é executado.

for os in platforms {
  print("Swift works great on \(os).")
}


// O xcode é inteligente, se a gente declarar o nome da variável do for de plat ele vai reconhecer que o array platforms existe e completar

for platform in platforms {
    print("Swift works great on \(platform).")
}

// Loops sobre intervalos:
// Convenção de codificações: geralmente usamos a letra...
// i: Numero o qual estmaos contando em loops
// j: segundo número ...
// k: terceiro número ...

// x...y: conta de x a y
for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

// x..<y - Conta até o numero mas excluindo o numero final
// ⚠️ Dica: essa forma é muito boa para trabalhar com matrizer que contamos a partir do índice 0
for i in 1..<12 {
    print("5 x \(i) is \(5 * i)")
}

// loops aninhados

for i in 1...12 {
    print("The \(i) times table:")
    
    for j in 1...12 {
        print(" \(j) x \(i) is \(i * j)")
    }
}

// Caso a gente não queira definir uma variável para o loop podemos usar: _

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)
