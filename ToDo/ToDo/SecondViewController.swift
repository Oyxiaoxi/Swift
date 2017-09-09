//
//  SecondViewController.swift
//  ToDo
//
//  Created by 欧阳晓锡 on 2017/9/9.
//  Copyright © 2017年 Oyxiaoxi. All rights reserved.
//

import UIKit

var myItemList = [String]()

class SecondViewController: UIViewController {

    @IBOutlet var myItemText: UITextField!
    
    @IBAction func addItem(_ sender: AnyObject)
    {
        // 验证填加是否为空
        if (myItemText.text?.characters.count)! > 0
        {
            myItemList.append(myItemText.text!)
            myItemText.text = ""
            self.view.endEditing(true)
            print(myItemList)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

