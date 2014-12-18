//
//  ViewController.swift
//  fingers
//
//  Created by Clément Uster on 18/12/2014.
//  Copyright (c) 2014 uster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {



    var randomNumber : Int = 0
    
    @IBOutlet weak var message: UILabel!
    
    @IBOutlet weak var guessedValue: UITextField!
    
    @IBAction func guess(sender: AnyObject) {
        var val = guessedValue.text.toInt()
        
        if (val == randomNumber){
            message.text = "you win! :) but you can play again!"
            randomNumber = Int(arc4random()) % 6
        }else if (val > randomNumber) {
            
            message.text = "it's less"
        }else{
            message.text = "it's more"
        }
        guessedValue.text=nil
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        randomNumber = Int(arc4random()) % 6
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

