import Foundation

var listOneCount : Int 
var firstList : String = ""
var listTwoCount : Int 
var secondList : String = ""

var listOne = Set<String>() // Первый список элементов
var listTwo = Set<String>() // Второй список элементов

// Начало обработки элементов командной строки
if CommandLine.arguments.count < 5 { // Хотя бы по одному элементу в каждом массиве   
    listOneCount = 3 
    firstList = "3 2 1"
    listTwoCount = 3
    secondList = "2 4 3"
} else {
    // Выделение первого массива
    listOneCount = Int(CommandLine.arguments[1])!    
    for arg in 3...listOneCount + 2 {         
        firstList += CommandLine.arguments[arg - 1] 
        firstList += " "                
    }  
    // Выделение второго массива
    listTwoCount = Int(CommandLine.arguments[listOneCount + 2])!    
    for arg in listOneCount + 4...listTwoCount + listOneCount + 3 {         
        secondList += CommandLine.arguments[arg - 1] 
        secondList += " "                
    }   
}


print("Введите количество элементов первого списка:")
var _listOneCount = readLine()!
print("Элементы первого списка:")
var _firstList = readLine()!
print("Введите количество элементов второго списка:")
var _listTwoCount = readLine()!
print("Элементы второго списка:")
var _secondList = readLine()!

if !_listOneCount.isEmpty || !_firstList.isEmpty || !_listTwoCount.isEmpty || !_secondList.isEmpty {
    listOneCount = Int(_listOneCount)!   
    firstList = _firstList
    listTwoCount = Int(_listTwoCount)!
    secondList = _secondList
}
// // Конец обработки элементов командной строки

var firstSeparatedString = firstList.components(separatedBy: " ")
var secondSeparatedString = secondList.components(separatedBy: " ")

// Добавление элементов в множества
for element in 0...firstSeparatedString.count - 1 {    
    listOne.insert(firstSeparatedString[element])
}
for element in 0...secondSeparatedString.count - 1 {    
    listTwo.insert(secondSeparatedString[element])
}

print("Ответ: \(listOne.intersection(listTwo).sorted())")







