//: Playground - noun: a place where people can play

import UIKit

var str:String = "Hello, Oyxiaoxi"

print(str.lengthOfBytes(using: .utf8))

print(str.characters.count)
for a in str.characters{
    print(a)
}

let name:String? = "Oyxiaoxi"
let age = 18
let location = "北京"
print(location + (name ?? "a") + String(age) + "岁")

print("\(location)\(name)\(age)岁")

let rect = CGRect(x:0,y:0,width:100,height:50)
print("\(rect)")

let h = 13
let m = 5
let s = 9
let timeStr = String(format:"%02d:%02d:%02d:",arguments:[h,m,s])
let timeStr1 = String(format:"%02d:%02d:%02d:",h,m,s)

// 值 as 类型作为类型转换
(str as NSString).substring(with: NSMakeRange(2, 5))

let index = str.index(str.startIndex,offsetBy:3)
str.substring(from: index)

// “123”只是用来取到索引位置
str.substring(from:"123".endIndex)
str.substring(to:index)

// String 使用 Range
let myRange = str.startIndex..<str.index(str.startIndex,offsetBy:5)
str.substring(with: myRange)

let myRange1 = index..<str.index(str.startIndex,offsetBy:5)
str.substring(with: myRange1)

