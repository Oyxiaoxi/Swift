//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Oyxiaoxi"

// 赋值运算符
var a = 5

// 加减乘除
1+2
5 - 2
2 * 3
10.0 / 2.5

// 任何情况下都不会做隐式转化，必须以相同类型进行计算
let num1 = 1
let num2 = 2.2
let num3 = Double(num1) + num2

// 必须要显式类型的转化
let j = 2.2
let i:Float = 1.2
i + Float(j)

// 求余运算
10 % a

// 负号运算
a += 2

// 比较运算
1 == 1
2 != 1
2 > 1
1 < 2
1 >= 1
2 <= 1

// 三目运算
let d = a > num1 ? 100 : 200

// 空合运算
var aNmae:String? = "ningcol"
let bName = aNmae ?? "aNameIsNil"


// 空间运算
for index in 1...5{
    print(index)
}

for index in 1..<5{
    print("半开区间:\(index)")
}

// 逻辑运算
let allowedEntry = false
let enteredDoorCode = true

if !allowedEntry{
    print("ACCESS DENIED")
}

if allowedEntry && enteredDoorCode{
    print("welcome!")
}else{
    print("ACCESS DENIED")
}

if allowedEntry || enteredDoorCode{
    print("welcome!")
}else{
    print("ACCESS DENIED")
}