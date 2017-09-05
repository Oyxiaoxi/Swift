//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Oyxiaoxi"

let num = 20
if num > 10{
    print("大于10")
}else{
    print("小于或等于10")
}


let name = "Oyxiaoxi"
switch name {
    case "Oyxiaoxi":
        let age = 18
        print("One \(age)")
    case "fil":
        print("two")
    case "Davi":
        print("three")
    case "":break
    case "tom","Oyxiaoxi":
        print("tomAndOyxiaoxi")
    default:
        print("other")
}
