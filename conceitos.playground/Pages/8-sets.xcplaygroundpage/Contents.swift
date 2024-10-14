//: [Previous](@previous)

import Foundation

// Sets = Conjuntos
// São uma forma de agrupar dados parecidas com arrays.
// ⚠️ A diferença é que em conjuntos não podemos ter dados duplicados!
// ⚠️ Não armazenam os itens em uma ordem específica!

// Ele cria um array e atribui a um conjunto
// Ele vai remover todos dados duplicados e não vai se lembrar da ordem exata
let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson", "Samuel L Jackson"])
print(people)

// Segunda diferença: Não usamos append e sim INSERT

// insert: Adicioanndo dados a um conjunto
var people2 = Set<String>()
people2.insert("Denzel Washington")
people2.insert("Tom Cruise")
people2.insert("Nicolas Cage")
people2.insert("Samuel L Jackson")
print(people2)

// Vantagens em usar conjuntos:
// 1 - Armazenar dados únicos: Não queremos nomes duplicados
// 2 - Os conjuntos armazenam dados em uma ordem altamente otimizada o que torna muito mais rápido localizar items

// Vamos supor que queremos usar um contains em um array de 1000 itens para identificar se existem um filme chamado "The Dark Knight"
// O array vai procurar em um por um até ler os 1000 itens e perceber que não existe o filme e retornar falso.
// O conjunto é executado tão rápido que você teria dificuldade de medir.
// ⚠️ mesmo se você tivesse um milhão de itens no conjunto, ou mesmo 10 milhões de itens, ele ainda seria executado instantaneamente, enquanto um array pode levar minutos ou mais para fazer o mesmo trabalho.

// 👀 Na maioria das vezes, você usará matrizes em vez de conjuntos, mas às vezes — só às vezes — você descobrirá que um conjunto é exatamente a escolha certa para resolver um problema específico, e fará com que um código lento seja executado em pouco tempo.

// Podemos usar: contains, sorted e cont
