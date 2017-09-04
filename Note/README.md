# Swift 简介
一款易学易用的编程语言，而且它还是第一套具有与脚本语言同样的表现力和趣味性的系统编程语言。Swift的设计以安全为出发点，以避免各种常见的编程错误类别。

```bash
swift --version
```
>- Apple Swift version 3.1 (swiftlang-802.0.53 clang-802.0.42)
>- Target: x86_64-apple-macosx10.9

### playground 体验
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

### 应用程序入口
>+ AppDelegate.swift
>+ 只有 .swift 文件，没有 .h / .m 文件
>+ Object-C 中，.h 放公共方法， .m 放私有方法
>+ 在 Swift 中，所有方法默认全局共享。 
>+ 所有的代码都在{}中，默认所有方法都有一个缩进！

```Swift
# 程序入口
@UIApplicationMain
```

### 应用程序
```Swift
#
#  ViewController.swift
#  002-第一个应用程序
#
#  Created by oyxiaoxi on 2017/9/4.
#  Copyright © 2017年 oyxiaoxi. All rights reserved.
#

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        # 创建一个视图
        let v = UIView(frame: CGRect(x: 0, y: 20, width: 100, height: 50))
        
        # 设置背影颜色
        v.backgroundColor = UIColor.red
        
        # 填加到视图
        view.addSubview(v)
        
        # 创建一个按钮
        let btn = UIButton(type: .contactAdd)
        
        v.addSubview(btn)
        
        
        btn.addTarget(self, action: #selector(ClickMe), for: .touchUpInside)
        # 2.0 语法
        # btn.addTarget(self, action: "ClickMe", for: .touchUpInside)

    }
    
    func ClickMe(btn:UIButton) -> (){
        print(#function)
        print(btn)
    }
}

```

## 注意
    1. OC [[UIview alloc]] initWidth:frame: CGRect(x: 0, y: 20, width: 100, height: 50)]
       Swift UIview(frame: CGRect(x: 0, y: 20, width: 100, height: 50))
       UIview()
       类名() == alloc / init 等价
    2. 类方法
    	OC[UIColor redColor]
    	Swift UIColor.red()
    	2.0 UIColor.redColor() 
    3. 访问当前对象的属性,可以不使用`self`
    	建议:都不用,在编辑器提示时，再填加,会对`语镜`有更好的体会。
    	原因：闭包(类似于 OC block),需要使用 `.self`
    4. 没有`;`
    	`;` 目的是分割语句,在SWift中，默认不需要 let a = 10;let b= 20
    5. 枚举类型
    	OC         UIButtonTypeContactAdd
    	Swift      `.`contactAdd
    6. 监听方法
    	OC      @selector
    	Swift   #selector  如果带参数不用使用 `:`
    	2.0 直接使用“”
    7. 调试
    	OC      NSLog
    	Swift   print
        	- 没有时间戳
        	- 效果比 NSLog 要高
    8. 追踪方法
    	OC      __FUNCTION
    	swift   #function
    	

    
    
    
    
    
    
    
    
    
    
    
    
    