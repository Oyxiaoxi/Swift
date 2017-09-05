//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Oyxiaoxi"

let url:NSURL = NSURL(string:"http://www.baidu.com")!

var aName: String? = "Oyxiaoxi"

var aAge: Int? = 24

if let name = aName,let age = aAge{
    print(name + String(age))
}

if var name = aName,let age = aAge{
    name = "AmOyxiaoxi"
    print(name + String(age))
}

// guard let 和 if let 相反。表示一定有值，没有就直接返回
class test{
    func demo(){
        let aNick: String? = "Oyxiaoxi"
        let aAge: Int? = 10
        guard let nick = aNick ,let age = aAge else{
            print("nil")
            return
        }
        print("guard let: " + nick + String(age))
    }
}

var t = test()
t.demo()

// 强制解包
var dataList:[String]?
dataList = ["Oyxiaoxi","AmOyxiaoxi"]

let count = dataList?.count ?? 0

let cou = dataList!.count