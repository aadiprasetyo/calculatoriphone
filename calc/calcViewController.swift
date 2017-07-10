//
//  ViewController.swift
//  calc
//
//  Created by admin on 7/10/17.
//  Copyright © 2017 indosystem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen:Float = 0
    var previousNumber:Float = 0
    var performingMath = false
    var operation = 0
   
    @IBOutlet weak var label: UILabel!
    @IBAction func Numbers(_ sender: UIButton)
    {
        if performingMath == true{
            
            label.text = String(sender.tag)
            numberOnScreen = Float(label.text!)!
            performingMath = false
            
            
        }else{
            label.text = label.text! + String(sender.tag)
            numberOnScreen = Float(label.text!)!
            
        
        }
    }
    @IBAction func Buttons(_ sender: UIButton)
    {
        if label.text != "" && sender.tag != 10 && sender.tag != 15
        {
            previousNumber = Float(label.text!)!
            if sender.tag == 11{ //bagi
                label.text = "/"
            }
            else if sender.tag == 12{ //kali
                label.text = "x"
            }
            else if sender.tag == 13{ //kurang
                label.text = "-"
            }
            else if sender.tag == 14{ //tambah
                label.text = "+"
            }
            performingMath = true
            operation = sender.tag
        }
        else if sender.tag == 15
        {
            if operation == 11{
                label.text = String(previousNumber / numberOnScreen)

            }
            else if operation == 12{
                label.text = String(previousNumber * numberOnScreen)
 
            }
            else if operation == 13{
                label.text = String(previousNumber - numberOnScreen)
   
            }
            else if operation == 14{
                label.text = String(previousNumber + numberOnScreen)
            }
            
        }
        else if sender.tag == 10{
            label.text = ""
            previousNumber = 0
            numberOnScreen = 0
            performingMath = false
            operation = 0
            
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

