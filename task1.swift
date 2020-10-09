import Foundation

var N : Int 
var M : Int
let X : Int 
let Y : Int

// Начало обработки элементов командной строки
if CommandLine.arguments.count < 5 {    
    N = 23
    M = 52
    X = 8
    Y = 43
} else {
    N = Int(CommandLine.arguments[1])!   
    M = Int(CommandLine.arguments[2])!   
    X = Int(CommandLine.arguments[3])!   
    Y = Int(CommandLine.arguments[4])!   
}
// Конец обработки элементов командной строки

if N > M {
    // Меняем местами
    let change = N
    N = M
    M = change
}
// Проерка X
if N - X > X && M - Y > X && Y > X {
    print(X)
}
// Проверка N - X
else if X > N - X && M - Y > N - X && Y > N - X {
    print(N - X)
}
// Проверка M - Y
else if X > M - Y && Y > M - Y && N - X > M - Y {
    print(M - Y)
}
else {
    print(Y)
}



