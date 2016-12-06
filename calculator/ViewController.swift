//
//  ViewController.swift
//  Calculator
//
//  Created by Mark Caldropoli on 11/30/16.
//  Copyright © 2016 Mark Caldropoli. All rights reserved.
//

import UIKit
//UIKit is a module

class ViewController: UIViewController { //Definition of a Class
    
    @IBOutlet weak var display: UILabel!
    //Property on our controller called display, type is UI Label! - ? and ! both mean optional
    //Optionals are always immeditately initialized to not set
    
    var userIsInTheMiddleOfTyping = false
    //Every property in Swift has to have an initial value
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        //If something is a constant, use let instead of var
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        } else {
            display.text = digit
        }
        userIsInTheMiddleOfTyping = true
        //print("touched \(digit) digit")
    }
    
}

