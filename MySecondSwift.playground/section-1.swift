// Playground - noun: a place where people can play

import UIKit

for i in -99...99
{
    i*i
}

let str = "hello, iMooc"
for c in str
{
    println(c)
}

let coursesArray = ["慕课网2048私人定制","CSS3 3D 特效","玩儿转Swift"]
for item in coursesArray
{
    for c in item
    {
        println(c)
    }
}

for (index, item) in enumerate(coursesArray)
{
    println("\(index):\(item)")
}

let coursesDictionary = [76:"慕课网2048私人定制", 77:"CSS 3D 特效", 127:"玩儿转Swift"]
for(index,item) in coursesDictionary
{
    println("key:\(index) value:\(item)")
}



for i in -100...100
{
    i*i
}

for var i = -100; i<=100; i++
{
    i*i
}

var i = -100
for ; i <= 100; i++
{
    i++
}

for var i = -6.28 ; i <= 6.28 ; i+=0.1
{
    sin(i)
}

//while & do-while
var arr:[Int] = []
for var i = 0 ; i < 100 ; i++
{
    arr.append(Int(arc4random()%1000))
}
arr.sort(<)

var min_num = 0 , max_num = arr.count
var mid_num:Int
var target = Int(arc4random()%1000)

while min_num <= max_num
{
    mid_num = (min_num + max_num)/2
    
    if arr[mid_num] == target{
        println("\(target) is found in index \(mid_num)")
    }
    else if arr[mid_num] > target{
        max_num = mid_num - 1
    }
    else{
        min_num = mid_num + 1
    }
}

if (min_num >= max_num)
{
    println("Cannot find \(target) in arr")
}



























