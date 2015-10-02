// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let maxNum = 1000

var index = 0

//maxNum = 999

var x = 0.0, y = 0.0, z = 0.0

//index = "text"

var websiteName:String
websiteName = "www.imooc.com"
println(websiteName)

let decimalInt:Int = 17
let binaryInt:Int = 0b10001
let octalInt:Int = 0o21
let hexadecimalInt:Int = 0x11

let float_a = 0.012
let float_b = 1.2e-2

let bignum_a = 1000000
let bignum_b = 1_000_000
let bignum_c = 1_0000_0000

let num_a:Float = 1
let num_b:Int = Int(1.2)

let 姓名 = "慕课女神"
姓名 + ", 你好"

let imtrueVar = true
let imfalseVar = false

if imfalseVar{
    println(" I'm true!")
}else if  3+4==7{
    println("3+4=7!")
}else{
    println("I'm false!")
}

var a:Int = 1
if a==1 {
    println("I'm true")
}

let registrationResult = ( isRegisterSuccess:true , nickName:"慕课女神" , gender:"女")
let connectionResult = ( 404 , "Not Found")

let (isRegisterSuccess , nickname, gender) = registrationResult
isRegisterSuccess
nickname
gender

registrationResult.0
registrationResult.1
registrationResult.2

registrationResult.isRegisterSuccess
registrationResult.nickName
registrationResult.gender

let loginResult = ( true, "mooc")
let ( isLoginSuccess , _ ) = loginResult

if isRegisterSuccess{
    println("登陆成功")
}

var aa:Int
aa = 1


var imOptionalVariable:Int?
imOptionalVariable = 12

let userInput = "18"
var age = userInput.toInt()
if (age != nil){
    println("your age is \(age)")
    println("your age is " + String(age!))

}else{
    println("invalid userInput")
}

if let userAge = userInput.toInt(){
    println("1your age is \(userAge)")
    userAge
}else{
    println("invalid userInput \(userInput)")
}

let myAge = userInput.toInt()
myAge

var b:Int!
b = userInput.toInt()
imOptionalVariable = userInput.toInt()

let a1 = 5
let b1 = 2
var c1 = 0

if c1 == a1{
}

a1 + b1
a1 - b1
a1 * b1
a1 / b1
a1 % b1

//a / c 

let d = 5.2 , e = 1.7
d / e
d % e

Int.max
Int.min

c1++
//c1

++c1
//c1

c1 += 2
c1 -= 2
c1 *= 2
c1 /= 2
c1 %= 2

let statusBarHeight = 20
let basicViewHeight = 548

var inFullScreenMode = true
var viewHeight = basicViewHeight + ( inFullScreenMode ? statusBarHeight : 0)

var score = 59
var rate = score >= 60 ? "A" : "B"

for index in 1...10{
    index
//    index = 1
}

let courseNames = ["swift", "CSS 3D特效", "Java实战", "数据结构"]

for i in 0...courseNames.count-1{
    courseNames[i]
}


let str2 = "I'm an immutable string"
str = "hi"
//str2 = "hi"

str += " imooc你好"
//str2 += " immoc"

var emptyString = ""

var emptyString1 = String()

emptyString += "hi, my friend"

emptyString.isEmpty
emptyString1.isEmpty

for character in emptyString
{
    println(character)
}

var c:Character = "!"

countElements(str)

var str3:NSString = str
str3.length

str = "hello, playground"
str += " hello, imooc"

let imInt:Int = 2
let imDouble:Double  = 3.1415926
let imBool:Bool = true
let imString:String = "Hello"
let imTuple = (2,4)
let imOptional:Int! = nil
let imCharacter:Character = "!"

println("Int:\(imInt)\nDouble:\(imDouble)\nBool:\(imBool)\nString:\(imString)\nTuple:\(imTuple)\nOptional:\(imOptional)\nCharacter:\(imCharacter)")

let str_a = "abc"
let str_b = "abc"
str_a == str_b

let str_c = "abd"
str_a > str_c
str_a < str_c
let str_d = "abcd"
str_d < str_c
str_d < str_b

let chapterNames = [
    "第一章 1.为你的下一代iOS应用开发做准备",
    "第二章 2.使用xcode6",
    "第二章 3.常量和变量",
    "第三章 4.布尔类型及if语句",
    "第二章 5.元组 Tuples",
    "第二组 6.可选型optional",
    "第三章 7.区间运算符",
    "第三章 8.逻辑运算符"
]

var count = 0

for name in chapterNames
{
    if name.hasPrefix("第二章"){
        count++
    }
}
count = 0
for name in chapterNames
{
    if name.hasSuffix("运算符"){
        count++
    }
}

let string = "aBcDeF"
string.uppercaseString
string.lowercaseString

str.capitalizedString

var str11 = "   !hi!! !!  "
str11.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
str11.stringByTrimmingCharactersInSet(NSCharacterSet(charactersInString: " !"))

var str33 = "welcome to play swift"
str33.componentsSeparatedByString(" ")

str33 = "welcome to play swift! Step-by-Step learn from now"
str33.componentsSeparatedByCharactersInSet(NSCharacterSet(charactersInString: " !-"))

str33.rangeOfString("swift")

var array = ["A","B","C","D","E","F"]
var array2:[String] = ["A","B","C","D","E","F"]
var array3:Array<String> = ["A","B","C","D","E","F"]

//array[0] = 1
array[0] = "AA"
//array

var array4 = [Int]()
var array5 = Array<String>()

var array6 = []//不建议
array = []
array.append("1")

array = [String]()
array = Array<String>()
//array = [Int]()

array = ["A","B","C","D","E","F"]
array.count
array.isEmpty
array.append("G")
array.insert("hello", atIndex: 2)
array.removeAtIndex(2)
array.removeLast()

//array.insert("K", atIndex: 100)
//array.removeAtIndex(100)

array[0] = "AA"
array[2...4] = ["CC", "DD", "EE"]
//array
array[2...4] = ["hello"]
//array
array.count
for index in 0...array.count-1{
    index
    println(array[index])
}

for item in array
{
    println(item)
}

for (index, item) in enumerate(array)
{
    println("\(index)-\(item)")
}


var dictionary = [1:"A", 2:"B", 3:"C"]
var courses = [76:"慕课网2048私人定制", 77:"CSS 3D 特效", 127:"玩转Swift"]
var websites = ["搜索引擎":"Google" , "学习网站":"慕课网" , "新闻网站":"网易新闻"]

var course2:Dictionary<Int,String> = [76:"慕课网2048私人定制", 77:"CSS 3D 特效", 127:"玩转Swift"]
var website2:Dictionary<String,String> = ["搜索引擎":"Google" , "学习网站":"慕课网" , "新闻网站":"网易新闻"]

var dict = Dictionary<Int, String>()
websites = Dictionary<String, String>()
websites = [:]
//websites = Dictionary<Int, String>()

courses.count
var value = courses[76]
value = website2["学习网站"]
value = courses[100]
value = website2["新闻网站"]

"课程名称：" + courses[76]!
courses[73] = "只学有用的"

courses[76] = "打造你的2048!"

var oldValue = courses.updateValue("2048", forKey: 76)
value = oldValue

courses.removeValueForKey(73)

for (key, value) in courses
{
    println("\(key):\(value)")
}

courses.keys
courses.values

for key in courses.keys
{
    println(key)
}

for value in courses.values
{
    println(value)
}

Array(courses.keys)

let dict1 = [1:"A", 2:"B", 3:"C"]
//dict1[1] = "AA"
//dict1[4] = "D"
//dict1[1] = nil

let array1 = ["A", "B", "C"]












