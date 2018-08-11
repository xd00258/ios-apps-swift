//
//  ViewController.swift
//  Animations
//
//  Created by Victor Vuong on 2017-05-02.
//  Copyright © 2017 Victor Vuong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var image: UIImageView!
    var number = 1
    var timer = Timer()
    var isAnimating = false
    @IBOutlet var button: UIButton!
    
    @IBAction func grow(_ sender: Any) {
        
        image.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        
        UIView.animate(withDuration: 1) {
            self.image.frame = CGRect (x: 0, y:0, width: 200, height: 200)
            
        }
    }
    @IBAction func slideIn(_ sender: Any) {
        
        image.center = CGPoint(x: image.center.x - 500, y: image.center.y)
        UIView.animate(withDuration: 2) {
            self.image.center = CGPoint(x: self.image.center.x + 500, y: self.image.center.y)
        }
        
    }
    
    
    @IBAction func fadeIn(_ sender: Any) {
        
        image.alpha = 0
        
        UIView.animate(withDuration: 1, animations: {
            self.image.alpha = 1
        })
    }
    
    func animate() {
        
        image.image = UIImage(named: "frame_" + String(number) + "_delay-0.15s.gif")
        number = number + 1
        
        if number == 6 {
            number = 0
        }
        
    }
    
    @IBAction func next(_ sender: Any) {
        
        if isAnimating {
            timer.invalidate()
            button.setTitle("Start", for: [])
            isAnimating = false
        }
        else {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.animate), userInfo: nil, repeats: true)
    
        isAnimating = true
            button.setTitle("Stop", for:[])
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

