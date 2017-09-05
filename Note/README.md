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

## 变量 var / 常量 let
	1. 定义变量 var ,定义之后,能修改
		常量 let ,定义之后,不能修改
	2. 自动推导,变量 / 常量的类型会根据右侧的代码执行结果,推导对应的类型
		热键 option + click,可查看定义的数据类型 
	3. Swift 中对类型要求异常严格
		** 任何不同类型的数据之间,不允许直接运算 **
		不会做任何形式的隐含转换，所有的类型确定，都由程序员负责！
	4. SWift 中,不存在基本数据类型,都是结构体
	5. 关于 var 和 let 的选择
		不可变的会更安全，开发的时候，建议都使用 `let`,在需要变化的时候，再使用 `var`
		Variable 'x' was never mutated; consider changing to 'let' constant
		变量 x 从来没有被修改,建议改成 `let`
	6. 修改视图属性
		let v = UIView() 
		v.backgroundColor = UIColor.cyan # 仅仅修改的是 v 的属性，并没修改 v 的指针地址
示例代码：

```Swift
//
//  ViewController.swift
//  004-常量和变量
//
//  Created by oyxiaoxi on 2017/9/5.
//  Copyright © 2017年 oyxiaoxi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 调用方法
        demo2()
        
        // 关于 var 和 let 的选择
        // 不可变的会更安全，开发的时候，建议都使用 `let`,在需要变化的时候，再使用 `var`
        // Variable 'x' was never mutated; consider changing to 'let' constant
        // 变量 x 从来没有被修改,建议改成 `let`
        
        //var x = 10
        //let y = 10
        //print(x + y)
        
        
        // 修改视图属性
        let v = UIView()
        
        // 仅仅修改的是 v 的属性，并没修改 v 的指针地址
        v.backgroundColor = UIColor.cyan
        
    }
    
    func demo2(){
        // 如果指定变量 / 常量的类型，也可以直接使用 let x:类型 = 值
        // 提示: Swift 开发中,极少使用直接指定类型，通常都是自动推导
        let x:Double = 10
        let y = 10.5
        //let z:Double = "abc" 字符串不能这样指定类型
        
        
        print(x + y)
    }
    
    // 1. 定义变量 var ,定义之后,能修改
    // 常量 let ,定义之后,不能修改
    // 2. 自动推导,变量 / 常量的类型会根据右侧的代码执行结果,推导对应的类型
    // 热键 option + click
    // 3. Swift 中对类型要求异常严格
    //    **** 任何不同类型的数据之间,不允许直接运算
    //    不会做任何形式的隐含转换，所有的类型确定，都由程序员负责！
    //
    // 4. SWift 中,不存在基本数据类型,都是结构体
    func demo1(){
        let x = 10
        let y = 10.5
        // print(x + y)
        
        // 1.将 y 转换成整数
        // OC 中的写法 (int)y => 类型强制转换
        // Swift 中 Int()    `结构体`的构造函数
        print(x + Int(y))
        
        // 2.将 x 转换成 Double 
        print(Double(x) + y)
    }
    
    func demo(){
        
        // 整数:Int(在OC中 NSInteger 类似)
        var x = 10
        x = 20
        
        
        // 小数:Double 精度高 (OC 中CGFloat)
        let y = 10.5
        
        //
        let v = UIView()
        
        print(x)
        print(y)
        print(v)
    }
}
```   
    
    
    
    
    
    
    
    
    
    
    