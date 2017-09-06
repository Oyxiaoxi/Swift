//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Oyxiaoxi"

// 格式：函数名（形参列表） -> 返回值类型

func sum(x: Int,y: Int) -> Int{
    return x + y
}

print(sum(x: 10, y: 20))

// 外部参数
func sum(num x:Int,num y:Int) -> Int{
    return x + y
}

print(sum(x: 60, y: 100))

// 外部参数使用 “_” 会忽略形参
func sum(_ x:Int  ,_ y:Int) -> Int{
    return x + y
}

print(sum(40,50))

// 默认值

func sum1(x : Int = 1,y :Int = 2 ) -> Int{
    return x + y
}

print(sum1())
print(sum1(x: 10, y: 10))
print(sum1(x: 10))
print(sum1(y: 10))

// 无返回值

func person(){
    print("Oyxiaoxi")
}

func person1() -> (){
    print("Oyxiaoxi")
}

func person2() -> Void{
    print("Oyxiaoxi")
}

print(person())
print(person1())
print(person2())