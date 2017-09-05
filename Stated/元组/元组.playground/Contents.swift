//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Oyxiaoxi"

var stu = (404,"大白")
// 嵌套
var msg = ("基本信息",("李刚",45))
print(stu)
print(msg)

var (a,b) = stu
print(a,b)

let (c,_) = stu
print(a,b)

//通过序号获得元组的值
print("status is \(stu.0)")

// 可修改
stu.0 = 500
let message = (status: 100,msg:"哈哈")
print("message is \(message.status) and \(message.msg)")