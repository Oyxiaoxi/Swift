//
//  FirstViewController.swift
//  ToDoList
//
//  Created by 欧阳晓锡 on 2017/9/6.
//  Copyright © 2017年 Oyxiaoxi. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    
    @IBAction func addItem(_ sender: AnyObject)
    {
        if(input.text != "")
        {
            list.append(input.text!)
            input.text = ""
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

