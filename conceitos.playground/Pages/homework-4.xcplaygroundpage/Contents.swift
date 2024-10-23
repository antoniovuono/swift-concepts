//: [Previous](@previous)

import Foundation

// Escreva uma função que aceite um inteiro de 1 a 10.000 e retorne a raiza quadrade inteira desse número.
// 1 - Você não pode usar a função interna do Swift sqrt()
// 2 - Se o número for menor que 1 ou maior que 10.000 você deve lançar um erro "Fora dos limites"
// 3 - Você deve considerar apenas raízes quadradas inteiras - não se preocupe com a raiz quadrada de 3 ser 1,732, por exemplo.
// 4 - Se você não conseguir encontrar a raiz quadrada, gere um erro “sem raiz”.

// Lembret: Como lembrete, se você tiver o número X, a raiz quadrada de X será outro número que, quando multiplicado por si mesmo, dá X. Então, a raiz quadrada de 9 é 3, porque 3x3 é 9, e a raiz quadrada de 25 é 5, porque 5x5 é 25.

// _: serve para omitir o parâmtro no momento de executar a função.

enum SquareRootError: Error {
    case outOfRange, noRoot
}

func squareRoot(of number: Int) throws -> Int {
    // verificar limites
    guard number >= 1 && number <= 10_000 else { throw SquareRootError.outOfRange }
    
    // encontrando a raiz quadrada inteira
    for i in 1...number/2 {
        if i * i == number {
            return i
        }
    }
    
    // Lançar erro se não existir raiz
    throw SquareRootError.noRoot
}


// Uso

do {
    let number = 25
    let result = try squareRoot(of: number)
    print("A raiz quadrada de \(number) é \(result)")
} catch SquareRootError.outOfRange {
    print("Erro: O número está fora do ranger de 1...10000")
} catch SquareRootError.noRoot {
    print("Não foi encontrado uma raiz quadrada")
} catch {
    print("Erro desconhecido!")
}

// Dúvidas:
// Usamos o of para personalizar o nome do parametro
// number/2: Uma raiz quadrada jamais será maior que o n/2 então fizemos isso para otimizar o processor e diminuir o número de iterações do laço !
