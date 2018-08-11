//
//  ViewController.swift
//  Menu Bars
//
//  Created by Victor Vuong on 2017-04-30.
//  Copyright © 2017 Victor Vuong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    @IBOutlet var timeLabel: UILabel!

//    @IBOutlet var enterField: UITextField!
//
//    
//    @IBAction func goButton(_ sender: Any) {
//        let enteredNumber = Int(enterField.text!)!
//        if enteredNumber > 0 {
//            timeLabel.text = enterField.text
//            timer.invalidate()
//        }
//        enterField.text = ""
//    }
    @IBAction func pauseButton(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func playButton(_ sender: Any) {
        
    timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func addTenButton(_ sender: Any) {
        var timeNumber = Int(timeLabel.text!)!
        timeNumber = timeNumber + 10
        timeLabel.text = String(timeNumber)
    }
    
    @IBAction func minusTenButton(_ sender: Any) {
        var timeNumber = Int(timeLabel.text!)!
        if timeNumber > 10 {
            timeNumber = timeNumber - 10
            timeLabel.text = String(timeNumber)
        }
    }
    
    @IBAction func resetButton(_ sender: Any) {
        var timeNumber = Int(timeLabel.text!)!
        timeNumber = 210
        timeLabel.text = String(timeNumber)
        timer.invalidate()
    }
    
    func processTimer() {
        
        var timeNumber = Int(timeLabel.text!)!
        if timeNumber > 0 {
        timeNumber = timeNumber - 1
        timeLabel.text = String(timeNumber)
        }
        else {
            timer.invalidate()
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

