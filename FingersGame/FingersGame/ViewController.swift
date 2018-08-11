//
//  ViewController.swift
//  FingersGame
//
//  Created by Victor Vuong on 2017-04-28.
//  Copyright © 2017 Victor Vuong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var answerLabel: UILabel!
    @IBOutlet var guessField: UITextField!
    @IBAction func guessButton(_ sender: Any) {
        let answer = arc4random_uniform(6)
        let guess = Int(guessField.text!)
        if (guess == Int(answer)) {
            answerLabel.text = "You're right!"
        }
        else{
            answerLabel.text = "Nope, guess again! It was \(answer)"
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

