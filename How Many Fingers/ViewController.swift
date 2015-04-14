//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Richard Tyran on 2/8/15.
//  Copyright (c) 2015 Richard Tyran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var fingersGuessed: UITextField!
    
    @IBOutlet var resultsLabel: UILabel!
    
    @IBAction func guessButton(sender: AnyObject) {
        
        var randomNumber = arc4random_uniform(6)
        
        var guessInt = fingersGuessed.text.toInt()
        
        
        if guessInt != nil {
            
            if Int(randomNumber) == guessInt {
                
                resultsLabel.text = "You are psychic!"
                
                
            } else {
                
                resultsLabel.text = "Sorry Pal"
                
            }
            
        } else {
            
            resultsLabel.text = "Please enter a number 0-5"
            
        }
        
        println(fingersGuessed.text)
        
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

