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


//对象和类
class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides"
    }
    
    let type = "shape"
    func colorPaint(color: String) -> String {
        return "A shape colored with \(color)"
    }
}

var shape = Shape()
shape.numberOfSides = 7
shape.simpleDescription()
shape.colorPaint("black")

//类的初始化用init
class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    init(name: String) {
        self.name = name
    }
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides"
    }
}
//子类和父类
class Square: NamedShape {
    var sideLength: Double
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    func area() -> Double {
        return sideLength * sideLength
    }
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)"
    }
}
var square = Square(sideLength: 5.2, name: "my test square")
square.area()
square.simpleDescription()

class Circle: NamedShape {
    var radius: Double
    init(radius: Double, name: String){
        self.radius = radius
        super.init(name: name)
        numberOfSides = 1
    }
    func area() -> Double{
        return 2 * 3.1414 * radius
    }
    override func simpleDescription() -> String {
        return "A circle with radius of length \(radius)"
    }
}
var circle = Circle(radius: 2.3, name: "My test circle")
circle.area()
circle.simpleDescription()

//类的getter和setter
class EquilateralTriangle: NamedShape {
    var sideLength: Double
    init (sideLength: Double, name: String){
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    var primeter: Double{
        get {
            return sideLength * 3.0
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    override func simpleDescription() -> String {
        return "A equilateral triangle with side of length \(sideLength)"
    }
}
var equilateralTrangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
equilateralTrangle.primeter
equilateralTrangle.primeter = 9.9
equilateralTrangle.sideLength

//willset注意square设置的是triangle.length
class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}
var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.triangle.sideLength)

//变量为可选值的时候，可以用？加在方法、属性和子脚本的前面。变量为nil则，返回nil，不为nil的情况时就是照常
let optionalSquare: Square? = Square(sideLength: 1.4, name: "optional square")
let sideLength = optionalSquare?.sideLength
let optionalSquare1: Square? = nil
let sideLength1 = optionalSquare1?.sideLength

//枚举类
enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
    func compareTo(rank: Rank) -> Int {
        if self.rawValue > rank.rawValue {
            return 1
        } else if self.rawValue < rank.rawValue {
            return -1
        } else {
            return 0
        }
    }
}
let ace = Rank.Ace
let aceRawValue = ace.rawValue
let three = Rank.Three
ace.compareTo(three)

if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
}

//
enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
    func color() -> String {
        switch self {
        case .Spades, .Clubs:
            return "black"
        default:
            return "red"
        }
    }
}
let hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()
hearts.color()
Suit.Clubs.color()

//结构体
struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
    func allCards() -> String {
        var myRank: Rank
        let mySuits = [Suit.Spades, Suit.Hearts, Suit.Diamonds, Suit.Clubs]
        var card: Card
        var result = ""
        for var num = Rank.Ace.rawValue; num <= Rank.King.rawValue; num++ {
            myRank = Rank(rawValue: num)!
            for mySuit in mySuits{
                card = Card(rank: myRank, suit: mySuit)
                result += card.simpleDescription() + "\n"
            }
        }
        return  result
    }
}
let threeOfSpades = Card(rank: .Three, suit: .Spades)
let threeOfSpadesSimpleDescription = threeOfSpades.simpleDescription()
print(threeOfSpades.allCards())






