import Foundation

var elementsCount : Int // Количество элементов массива
var CommandLineArgumentsArray = [Int]() // Массив элементов 

// Начало обработки элементов командной строки
if CommandLine.arguments.count < 3 {    
    elementsCount = 8 
    CommandLineArgumentsArray = [4, 3, 5, 2, 5, 1, 3, 5]
} else {
    elementsCount = Int(CommandLine.arguments[1])! // Количество элементов массива - в отдельную переменную
    // Помещение элементов для обработки в массив
    for CommandLineArgument in 3...CommandLine.arguments.count { 
        // + приведение к int 
        CommandLineArgumentsArray.append(Int(CommandLine.arguments[CommandLineArgument - 1])!)         
    }    
}

print("Введите количество элементов массива:")
let _elementsCount = readLine()!
print("Введите массив:")
let _ArgumentsArray = readLine()!

var _argumentsArray = _ArgumentsArray.components(separatedBy: " ")

if !_elementsCount.isEmpty || !_ArgumentsArray.isEmpty {
    elementsCount = Int(_elementsCount)!    
    CommandLineArgumentsArray.removeAll() // Очищаем массив от заготовленных чисел
    for arg in 1...elementsCount { 
        // + приведение к int 
        CommandLineArgumentsArray.append(Int(_argumentsArray[arg - 1])!)         
    }  
}
// Конец обработки элементов командной строки

print("Количество элементов: \(elementsCount)") 
print("Элементы: \(CommandLineArgumentsArray)")

var elCount = 0 // Счетчик для количества повторений 
var solutionArray = [Int]() // Массив решений

//  Проходим по всем элементам
for i in 0...CommandLineArgumentsArray.count - 1 {
    // Дважды
    for j in 0...CommandLineArgumentsArray.count - 1 {
        if (CommandLineArgumentsArray[i] == CommandLineArgumentsArray[j]) {
        // Фиксируем количество повторений
        elCount += 1
        }                  
    }
    // Если элемент встретился всего один раз
    if (elCount == 1) {
        // Записываем его
        solutionArray.append(CommandLineArgumentsArray[i]);          
    }
    // Обнуляем переменную для следующего элемента массива
    elCount = 0
}

print("Решение: \(solutionArray)")

