// Playground - noun: a place where people can play

import UIKit

let colors =
[
    "Air Force Bule":(red:93,green:138,blue:168),
    "Bittersweet":(red:254,green:111,blue:94),
    "Canary Yellow":(red:255,green:239,blue:0),
    "Dark Orange":(red:255,green:140,blue:0),
    "Electric Violet":(red:143,green:0,blue:255),
    "Fern":(red:113,green:188,blue:120),
    "Gamboge":(red:228,green:155,blue:15),
    "HollyWood Cerise":(red:244,green:0,blue:161),
    "Icterine":(red:252,green:247,blue:94),
    "Jazzbery Jam":(red:165,green:11,blue:94)
]

var backView = UIView(frame:CGRectMake(0.0, 0.0, 320.0, CGFloat(colors.count*50)))
backView.backgroundColor = UIColor.blackColor()
var index = 0
for(colorName, rgbTuple) in colors
{
    var colorStripe = UILabel(frame: CGRectMake(0.0, CGFloat(index*50+5), 320.0, 40.0))
//    println("colorName:\(colorName)\nred:\(rgbTuple.red/255.0) green:\(rgbTuple.green/255.0) blue:\(rgbTuple.blue/255.0)\n")
    colorStripe.backgroundColor =
        UIColor(
            red: CGFloat(rgbTuple.red)/255.0,
            green: CGFloat(rgbTuple.green)/255.0,
            blue: CGFloat(rgbTuple.blue)/255.0,
            alpha: 1.0
        )
    var colorNameLabel = UILabel(frame: CGRectMake(0.0, 0.0, 300, 40.0))
    colorNameLabel.font = UIFont(name:"",size:24.0)
    colorNameLabel.textColor = UIColor.blackColor()
    colorNameLabel.textAlignment = NSTextAlignment.Right
    colorNameLabel.text = colorName
    colorStripe.addSubview(colorNameLabel)
    backView.addSubview(colorStripe)
    index++
}
backView

for index in 2..<5
{
    println()
}