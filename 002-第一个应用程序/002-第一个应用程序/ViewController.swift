//
//  ViewController.swift
//  002-第一个应用程序
//
//  Created by oyxiaoxi on 2017/9/4.
//  Copyright © 2017年 oyxiaoxi. All rights reserved.
//

/**
1.  OC [[UIview alloc]] initWidth:frame: CGRect(x: 0, y: 20, width: 100, height: 50)]
    Swift UIview(frame: CGRect(x: 0, y: 20, width: 100, height: 50))
        UIview()
    类名() == alloc / init 等价

2.类方法
    OC[UIColor redColor]
    Swift UIColor.red()
    2.0 UIColor.redColor()
 
3.访问当前对象的属性,可以不使用`self`
    建议:都不用,在编辑器提示时，再填加,会对`语镜`有更好的体会。
    原因：闭包(类似于 OC block),需要使用 `.self`

4.没有`;`
    `;` 目的是分割语句,在SWift中，默认不需要

5.枚举类型
 OC         UIButtonTypeContactAdd
 Swift      `.`contactAdd
 
6.监听方法
    OC      @selector
    Swift   #selector  如果带参数不用使用 `:`
    2.0 直接使用“”

7.调试
    OC      NSLog
    Swift   print
        - 没有时间戳
        - 效果比 NSLog 要高
 
8.追踪方法
    OC      __FUNCTION
    swift   #function
 
 */
import UIKit
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // 创建一个视图
        let v = UIView(frame: CGRect(x: 0, y: 20, width: 100, height: 50))
        // 设置背影颜色
        v.backgroundColor = UIColor.red
        // 填加到视图
        view.addSubview(v)
        // 创建一个按钮
        let btn = UIButton(type: .contactAdd)
        v.addSubview(btn)
        btn.addTarget(self, action: #selector(ClickMe), for: .touchUpInside)
        // 2.0 语法
        // btn.addTarget(self, action: "ClickMe", for: .touchUpInside)
    }
    
    func ClickMe(btn:UIButton) -> (){
        print(#function)
        print(btn)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
