import Foundation

var supposedIP : String // Предполагаемый IP

// Начало обработки элементов командной строки
if CommandLine.arguments.count < 2 {    
    supposedIP = "127.0.0.1" 
} else {
    supposedIP = CommandLine.arguments[1]
}

print("Введите строку:")
let _supposedIP = readLine()!

if !_supposedIP.isEmpty {
    supposedIP = _supposedIP
}
// Конец обработки элементов командной строки

print("Предполагаемый IP: \(supposedIP)") 

var separatedString = supposedIP.components(separatedBy: ".") // Разделение строки на элементы предполагаемого шаблона
var componentsCount = 0
for component in 0...separatedString.count - 1 {
    if Int(separatedString[component])! >= 0 && Int(separatedString[component])! <= 255 {
        componentsCount += 1
    }    
}
componentsCount == 4 ? print("Ответ: YES") : print("Ответ: NO")


