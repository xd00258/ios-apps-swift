//
//  ViewController.swift
//  Is It Prime
//
//  Created by Victor Vuong on 2017-04-29.
//  Copyright © 2017 Victor Vuong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var numberField: UITextField!
    @IBOutlet var answerLabel: UILabel!

    @IBAction func primeButton(_ sender: Any) {
        var isPrime = true
        let enteredInteger = Int(numberField.text!)
        if let number = enteredInteger{
            var i = 2
            if number == 1 {
                answerLabel.text = "\(number) is not prime!"
            }
            else if number <= 0{
                answerLabel.text = "Please enter a positive number"
            }
            else{
              while i < number{
                if number % i == 0 {
                    isPrime = false
                }
                i += 1
                }
                if isPrime{
                    answerLabel.text = "\(number) is prime!"
                }
                else{
                    answerLabel.text = "\(number) is not prime!"
                }
            }
        }
        else{
            answerLabel.text = "Please enter a positive number"
        }
        numberField.text = ""
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

