//: [Previous](@previous)

import Foundation

// É possível configurar valores padrões:
// As vezes queremos garantir que caso não seja fornecido um valor ele trabalhe com o valor padrão

// Aqui configuramos o end como 12 por padrão

func printTimeTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) = \(i * number)")
    }
}

//printTimeTables(for: 5, end: 10)
//aqui ele usa o valor padrão definido
//printTimeTables(for: 2)


// Defaults values em recursos nativos do Swift
// Como otimização de desempenho o Swift dá aos arrays apenas memória suficiente para armazenar seus itens, mais um pouco extra para que ele possam crescer um pouco ao longo do tempo
// Se mais itens forem adicionado ele vai alcoando automaticamente mais memória para que o mínimo possível seja desperdiçado


var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
// quando removemos os itens o Swift liberará toda a memória atribuida a esse array.
characters.removeAll()
print(characters.count)

// As vezes você quer logo em seguida adicionar muitos itens de volta ao array e não quer liberar a memória.
// Podemos usar um default: keepingCapacity que vem como false por padrão
characters.removeAll(keepingCapacity: true)
