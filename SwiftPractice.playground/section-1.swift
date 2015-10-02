// Playground - noun: a place where people can play

import UIKit

//简单值
let myVar:Float = 4

let label = "The width is "
let width = 94
let widthlabel = label + String(width)

let apples = 4
let oranges = 9
let applesSummary = "I hava \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruits"

let floatVar = 3.1415
let sayHi = "Hi Jack, is pi \(floatVar)"

var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"
var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic"
]
occupations["Jayne"] = "Public Relations"
let emptyArray = [String]()
let emptyDictionary = [String: Float]()

//控制流
let individualScores = [94, 32, 74, 83, 36, 108]
var teamScore = 0
for score in individualScores {
    if score >= 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
optionalName = nil
if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    greeting = "optionalName is nil"
}

let vagetable = "red pepper"
switch vagetable {
case "calery":
    print("add some raisins and make ants on a log")
case "cucumber", "watercress":
    print("That would make a good tea sandwich")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)")
default:
    print("Everything tastes good in soup")
}

var interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square":[1, 4, 9, 16, 25]
]
var largest = 0
var largestKind: String!
for (kind, numbers) in interestingNumbers{
    for number in numbers{
        if number > largest{
            largest = number
            largestKind = kind
        }
    }
}
print(largest)
print(largestKind)

var n = 2
while n < 100 {
    n = n * 2
}
print(n)

var firstForLoop = 0
for i in 0..<4 {
    firstForLoop += i
}
print(firstForLoop)

var secondForLoop = 0
for var i = 0; i < 4; i++ {
    secondForLoop += i
}
print(secondForLoop)

//函数和闭包
func greeting(name: String, day: String, meal: String) -> String{
    return "Hi \(name), Today is \(day), I ate \(meal) at lunch."
}

greeting("Bob", day: "Thuesday", meal: "eggs")

func calculateStatiitics(scores: [Int]) -> (min: Int, max: Int, sum: Int){
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min{
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}
let statistics = calculateStatiitics([5, 3, 10, 3, 9])
print(statistics.min)
print(statistics.max)
print(statistics.sum)

func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumOf()
sumOf(3, 10, 9, 2)

func avergeOf(numbers: Int...) -> Float{
    var sum = 0
    for number in numbers {
        sum += number
    }
    return Float(sum)/Float(numbers.count)
}
avergeOf(3, 10, 9, 2)

//函数嵌套
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

//函数作为返回值
func makeIncrementer() -> (Int -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

//函数做参数
func hasAnyMatches(list: [Int], condition: Int -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [10, 13, 22, 9, 36]
hasAnyMatches(numbers, condition: lessThanTen)

//用{}来创建一个匿名闭包，注意关键词in
numbers.map({(number:Int) -> Int in
    let result = 3 * number
    return result})
//重写闭包，对所有奇数都返回0
numbers.map({
    (number: Int) -> Int in
    var result = 0
    if number % 2 == 0 {
        result = number
    }
    return result
 })
//简单的闭包创建，忽略参数类型和返回值类型。单个语句的闭包会把语句的值当做返回值返回
let mappedNumbers = numbers.map({
    number in number * 3
})
print(mappedNumbers)
//简单的闭包创建，可以通过参数位置而不是参数名称来引用参数，而且当闭包被当做最后一个参数则可以直接跟在（）后面，如果闭包是传给函数的唯一参数，则连（)都可以省略
let sortedNumbers = numbers.sort{$0 > $1}
print(sortedNumbers)













