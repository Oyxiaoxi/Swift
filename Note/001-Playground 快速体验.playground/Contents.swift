//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// 创建视图
let view = UIView(frame:CGRect(x: 0, y: 0, width: 200, height: 50))
view.backgroundColor = UIColor.red
// 创建一个按钮
let btn = UIButton(type: .contactAdd)
btn.center = view.center
view.addSubview(btn)

var sum = 0
for i in 0..<9{
    sum += i
}