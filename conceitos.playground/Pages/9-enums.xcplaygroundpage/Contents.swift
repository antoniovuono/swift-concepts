//: [Previous](@previous)

import Foundation

// Enums: O tipo enum nos permite definir um novo tipo de dado com um punhado de valores ESPECÍFICOS!

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday

print(day)

// Forma reduzida de escrever um ENUM
// Se tivermos muitos casos podemos escrevem da seguuinte forma

enum Weekday2  {
    case monday, tuesday, wednesday, thursday, friday
}

// Quando atribuimos uma variável a um tipo enum ele reconhece o tipo criado
// Então ao tentar modificar a variável podemos usar de forma reduzida pois ele vai saber que a variavel esta atrelada as opções do enum
var day2 = Weekday2.monday
day2 = .friday
print(day2)

// ⚠️ Embora não seja visível, um dos principais benefícios do enum é que o swift armazena os items de forma otimizada
// Ele armazena utilizando números inteiros, exemplo: Weekday.monday = 0
// Isso é muito mais eficiente do que armazenar como string !
