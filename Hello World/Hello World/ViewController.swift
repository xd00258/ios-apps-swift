//
//  ViewController.swift
//  Hello World
//
//  Created by Victor Vuong on 2017-04-28.
//  Copyright © 2017 Victor Vuong. All rights reserved.
// let diceRoll = arc4random_uniform(6) means 0 to 5

import UIKit

class ViewController: UIViewController {
    @IBOutlet var textField: UITextField!
    
    @IBOutlet var aylmao: UIImageView!
  
    @IBOutlet var catAgeLabel: UILabel!
    @IBAction func buttonTapped(_ sender: Any) {
        
    
        if(textField.text == ""){
            catAgeLabel.text = "0"
        }
        
        else{
            
        let catAge = Int(textField.text!)! * 7
        
        catAgeLabel.text = String(catAge)
        aylmao.isHidden = false
        textField.text = ""
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

