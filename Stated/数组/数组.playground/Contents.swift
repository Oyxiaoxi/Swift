//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Oyxiaoxi"

let array1 = ["Oyxiaoxi","AmOyxiaoxi"]
let array2 = [1,2,3,4,5,6]

// 定义一个数组，没有初始化
var array3:[Int]

// 空数组必须初始化
array3 = [Int]()

let array4 = [String]()

let array5:[Any] = ["Oyxiaoxi","AmOyxiaoxi",24]

var arr3 = [Double](repeating: 0.0,count:3)
var arr4 = Array(repeating: 3.0,count:3)

var arr: [String] = ["Alex","Brian","Dave"]

print(arr.count)
print(arr[0])

// 数组遍历
for name in array1{
    print(name)
}

for i in 0..<array2.count{
    print(array2[i])
}

// 同时遍历下标和内容
for e in array2.enumerated(){
    print(e)
    print("元组 \(e.offset) \(e.element)")
}

// 反序遍历
for a in array2.reversed(){
    print(a)
}

// 数组增删改
arr.append("AmMu")

// 合并(类型必须保持一致)
let arr1 = ["Evi","Tank"]
arr += arr1

// 修改
arr[0] = "Tom"
print(arr)

// 删除
arr.removeFirst()
print(arr)

arr.remove(at: 2)
print(arr)

// 删除全部并保留空间
arr.removeAll(keepingCapacity: true)
print(arr.capacity)

// 容量
print("初始容量 \(array3.capacity)")
for i in 0..<8{
    array3.append(i)
    print("\(array3),容量: \(array3.capacity)")
}

