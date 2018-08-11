//
//  ViewController.swift
//  Permanent Data Storage
//
//  Created by Victor Vuong on 2017-04-30.
//  Copyright © 2017 Victor Vuong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var answerLabel: UILabel!
    @IBOutlet var enterLabel: UILabel!
    @IBOutlet var enterField: UITextField!
    @IBAction func saveButton(_ sender: Any) {
        UserDefaults.standard.set(enterField.text, forKey: "phoneNumber")
        let str = (describing: UserDefaults.standard.object(forKey:"phoneNumber"))
        
        if let number = str as? String {
            answerLabel.text = "Your last phone number saved was: " + number
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if UserDefaults.standard.object(forKey: "phoneNumber") != nil {
            let str = (describing: UserDefaults.standard.object(forKey:"phoneNumber"))
            
            if let number = str as? String {
                answerLabel.text = "Your last phone number saved was: " + number
            }
            
        }
        //UserDefaults.standard.set("lmao", forKey: "ayy")
        
//        let nameObject = UserDefaults.standard.object(forKey: "ayy")
//        if let name = nameObject as? String {
//            print (name)
//        }
        
       // let arr = [1,2,3,4]
       // UserDefaults.standard.set(arr, forKey: "array")
        
//        let arrayObject = UserDefaults.standard.object(forKey: "array")
//        
//        if let array = arrayObject as? NSArray {
//            print(array)
//        }
//  }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

