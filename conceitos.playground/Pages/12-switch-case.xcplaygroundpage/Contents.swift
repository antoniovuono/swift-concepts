//: [Previous](@previous)

import Foundation

// ⚠️ Podemos usar if else para verificar quantas validações a gente quiser MAS ficará bem difícil de ler o seu código !

enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

if forecast == .sun {
    print("It should be a nice day.")
} else if forecast == .rain {
    print("Pack an umbrella.")
} else if forecast == .wind {
    print("Wear something warm")
} else if forecast == .rain {
    print("School is cancelled.")
} else {
    print("Our forecast generator is broken!")
}


//Isso funciona, mas tem problemas:
//
// 1 - Continuamos tendo que escrever forecast, mesmo verificando a mesma coisa todas as vezes.
// 2 - Eu acidentalmente verifiquei .rainduas vezes, embora a segunda verificação nunca possa ser verdadeira, porque a segunda verificação só é executada se a primeira falhar.
// 3 - Não verifiquei .snownada, então estamos perdendo alguma funcionalidade.


// Podemos resolver os três problemas usando switch:

// nos permite verificar casos individuais um por um, mas agora o Swift pode ajudar.
// No caso de um enum, ele sabe todos os casos possíveis que o enum pode ter, então se perdermos um ou verificarmos um duas vezes, ele reclamará.

// ⚠️ O switch vai executar o primeiro caso que satisfazer a condição que você está verificando, mas não mais ! 

switch forecast {
    case .sun:
        print("It should be a nice day")
    case .rain:
        print("Pack an umbrella")
    case .wind:
        print("Wear something warm")
    case .snow:
        print("School is cancelled")
    default:
    print("Our forecast generator is broken!")
}

// observação: O swift verifica seus casos em ordem e executa o primeiro que corresponder !
// Se você colocar o default antes de outro caso, esse caso será inútil porque ele nunca será correspondido e swift se recusará  a construir seu código.
