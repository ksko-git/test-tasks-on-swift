import Foundation

print("Введите количество элементов первого списка:")
var listOneCount = readLine()
print("Элементы первого списка:")
var firstList = readLine()!
print("Введите количество элементов второго списка:")
var listTwoCount = readLine()
print("Элементы второго списка:")
var secondList = readLine()!

var listOne = Set<String>() // Первый список элементов
var listTwo = Set<String>() // Второй список элементов

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







