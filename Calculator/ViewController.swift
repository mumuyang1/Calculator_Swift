//
//  ViewController.swift
//  Calculator
//
//  Created by Yanzi Li on 12/7/15.
//  Copyright © 2015 Yanzi Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isUserInTheMiddleAndTypingANumber : Bool = false
    
    @IBOutlet var display: UILabel!
    
    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        
        if(isUserInTheMiddleAndTypingANumber){
            display.text = display.text! + digit
            print("digit = \(digit)")
        }else{
            display.text = digit
            isUserInTheMiddleAndTypingANumber = true
        }
    }
}

