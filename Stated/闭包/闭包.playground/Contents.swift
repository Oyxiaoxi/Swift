//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Oyxiaoix"

func sum(x: Int, y:Int) -> Int{
    return x + y
}

print(sum(x: 10, y: 20))

let fu = sum
print(fu(10,10))

let demo = {
    print("hello")
}

demo()

let demo1 = { (x: Int) -> () in
    print(x)
}

demo1(50)

let demo2 = { (x: Int) -> () in
    return 40 + x
}

print(demo2(40))
