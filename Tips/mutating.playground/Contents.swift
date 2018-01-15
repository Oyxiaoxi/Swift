//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

protocol Vehicle{
    var numberofWheels: Int{get}
    var color: UIColor {get set}
    
    mutating changeColor()
}

struct MyCar: Vehicle{
    let numberofWheels = 4
    var color: UIColor.blue
    
    mutating func changeColor(){
        color = .red
    }
}
