import Foundation

var N : Int 
var M : Int
var X : Int 
var Y : Int

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

print("Введите N:")
let _N = readLine()!
print("Введите M:")
let _M = readLine()!
print("Введите X:")
let _X = readLine()!
print("Введите Y:")
let _Y = readLine()!

if !_N.isEmpty || !_M.isEmpty || !_X.isEmpty || !_Y.isEmpty {
    N = Int(_N)!
    M = Int(_M)!
    X = Int(_X)!
    Y = Int(_Y)!
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
    print("Ответ: \(X)")
}
// Проверка N - X
else if X > N - X && M - Y > N - X && Y > N - X {
    print("Ответ: \(N - X)")
}
// Проверка M - Y
else if X > M - Y && Y > M - Y && N - X > M - Y {
    print("Ответ: \(M - Y)")
}
else {
    print("Ответ: \(Y)")
}



