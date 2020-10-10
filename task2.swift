import Foundation

var V : Int // Скорость
var T : Int // Время

// Начало обработки элементов командной строки
if CommandLine.arguments.count < 3 {    
    V = 60 
    T = 2
} else {
    V = Int(CommandLine.arguments[1])!
    T = Int(CommandLine.arguments[2])!
}

print("Введите скорость:")
let _V = readLine()!
print("Введите время:")
let _T = readLine()!

if !_V.isEmpty || !_T.isEmpty {
    V = Int(_V)!
    T = Int(_T)!
}
// Конец обработки элементов командной строки

print("Скорость: \(V) км/ч") 
print("Время: \(T) ч")

let remainder = V * T % 109 // Остаток от деления расстояния на 109
let solution = (remainder + 109) % 109

print("Решение: \(solution)")

