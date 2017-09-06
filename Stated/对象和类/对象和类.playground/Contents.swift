//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Oyxiaoxi"

class Shape{
    var numberOfSides = 0
    func simepleDescription() -> String {
        return "A shape width \(numberOfSides) sides."
    }
}

// 实例化
var shape = Shape()
// 赋值
shape.numberOfSides = 7
// 调用方法
var shapeDescription = shape.simepleDescription()

class NamedShape{
    var numberOfSides: Int = 0
    var name: String
    init(name: String){
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

// 重写父类方法

class Square: NamedShape{
    var sideLength: Double
    init(sideLength: Double,name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    // 使用 override
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}

let test = Square(sideLength: 5,name: "my test square")
test.area()
test.simpleDescription()

