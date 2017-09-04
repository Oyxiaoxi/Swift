# Swift 简介
一款易学易用的编程语言，而且它还是第一套具有与脚本语言同样的表现力和趣味性的系统编程语言。Swift的设计以安全为出发点，以避免各种常见的编程错误类别。

```bash
swift --version
```
>- Apple Swift version 3.1 (swiftlang-802.0.53 clang-802.0.42)
>- Target: x86_64-apple-macosx10.9

## playground 体验
```swift
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
```
>- 可以快速学习 **swfit** 语法。
>- 方法，语法测试。但是他对 **机器的硬盘** 要求很高