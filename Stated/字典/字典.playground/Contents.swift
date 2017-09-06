//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Oyxiaoxi"

let dict1 = ["name":"lisi","age":"18"]

var dict2:[String:Any] = ["name":"lisi","age":"18"]

let array = [
    ["name":"lisi","age":"18"],
    ["name":"wangwu","age":8]
]

print(array)

let array1:[[String:Any]] = [
    ["name":"lisi","age":"18"],
    ["name":"wangwu","age":8]
]

print(array1)

print(dict2["age"])

// 字典增删改

dict2["sex"] = "man"
print(dict2)

dict2["name"] = "zhangsan"
print(dict2)

dict2.removeValue(forKey: "age")
print(dict2)


// 字典遍历

for e in dict2{
    print("字典遍历:\(e) e.key:(e.key) value:\(e.value)")
}

// key,value 可以随意更改
for(key,value) in dict2{
    print("key:\(key), value:\(value)")
}

// 字典合并
var dict3:[String:Any] = ["name":"lisi","age":"18","sex":"man"]
let dict4:[String:Any] = ["name":"Oyxiaoxi","height":"176"]

for e in dict4 {
    dict3[e.key] = dict4[e.key]
}

print("合并dict:" + String(format:"%@",dict3))



