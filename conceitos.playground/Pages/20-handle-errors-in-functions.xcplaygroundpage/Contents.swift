//: [Previous](@previous)

import Foundation

// As coisas dão errado o tempo tempo, seja quando um arquivo que queremos baixar falham por a rede estar inativa ou quando o arquivo não existe.
// Ai surge a necessidade de tratar o erro por parte do cliente se não nosso aplicativo trava.

// Exemplo prático:
// Se o usuário nos pedir para verificar o quão forte é sua senha, sinalizaremos um erro grave se a senha for muito curta ou óbvia.

// Tratar os erros em Swift requer 3 etapas:

// 1. Informamos o Swift dos possíveis erros que podem acontecer.

// Criamos um enum especificando os possíveis erros: Senha curta (short), senha obvia (obvius)

enum PasswordError: Error {
    case short, obvious
}

// 2. Escrever uma função que vai sinalizar e disparar os possíveis erros.
// ⚠️ Quando um erro é disparado ou lançado estamos dizendo que algo fatal deu errado com a função, então ele termina a execução sem enviar nenhum valor de volta!

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}


// 3. Executar a função e lidar com os possíveis erros que podem aparecer

// Em casos reais: do..try..catch
// 1. Iniciando um bloco de trabalho que pode gerar erros usando: do
// 2. Chamando uma ou mais funções de lançamento, usando: try
// 3. Lidando com quaisquer erros gerados usando: catch

//do {
//    try someRiskyWortk()
//} catch {
//    print("Handle erros here!")
//}

let string = "12345"

// Se checkPassword funcionar ele retornaráum valor para o result
// Nesse caso ele vai cair diretamernte no erro pois um erro foi lançado na execução

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch {
    print("The was an error")
}


// try:
// - Ele deve ser escrito antes de chamar todas as funções que podem gerar erros. É um sinal visual para os desenvoledores que a execução regular do código será interrompdia se ocorreu um erro.
// - Precisamos usar o try dentro de um do... e garantir que tem um ou mais catchs...
// - É possível não suar o catch com try! mas isso vai travar o código se um erro for lançado

// catch: Quando se trata de capturar erros, você deve sempre ter um catchbloco que seja capaz de lidar com todo tipo de erro. No entanto, você também pode capturar erros específicos, se quiser:

let string2 = "123456"

do {
    let result = try checkPassword(string2)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password!")
} catch PasswordError.obvious {
    print("Please use a longer password!")
} catch {
    print("There was an error!")
}

// Dica: A maioria dos erros lançados pela Apple fornece uma mensagem significativa que você pode apresentar ao usuário.
