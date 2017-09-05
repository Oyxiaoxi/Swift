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

