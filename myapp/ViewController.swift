//
//  ViewController.swift
//  myapp
//
//  Created by Clément Uster on 18/12/2014.
//  Copyright (c) 2014 uster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text: UITextField!
    
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func button(sender: AnyObject) {
        println(text.text)
        var age = text.text.toInt()
        age = age! * 7
       
        label.text = "your cat is : \(age!)"
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

