//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Oyxiaoxi"

for i in 0..<10{
    print(i)
}


for _ in 0..<5{
    print("Oyxiaoxi")
}

print("------ 步长循环 ------")
for i in stride(from:0,to:12,by:2){
    print(i)
}

for i in stride(from: 12, to: 0, by: -2){
    print(i)
}

print("------ 反序循环 ------")
let range = 0...10
for i in range.reversed(){
    print(i)
}

print("------ while循环 ------")
var n = 2
while n < 100 {
    n = n * 2
}
print(n)

print("------ repeat-while循环 ------")
var m = 2
repeat{
    m = m * 2
} while m < 100
print(m)
