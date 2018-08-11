//
//  ViewController.swift
//  Audio Player
//
//  Created by Victor Vuong on 2017-05-14.
//  Copyright © 2017 Victor Vuong. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player = AVAudioPlayer()
    var timer = Timer()

    @IBOutlet var scrubber: UISlider!
    @IBOutlet var slider: UISlider!
    
    func updateScrubber() {
        
        scrubber.value = Float(player.currentTime)
    }
    
    @IBAction func play(_ sender: Any) {
        player.play()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.updateScrubber), userInfo: nil, repeats: true)
    }
    
    @IBAction func pause(_ sender: Any) {
        player.pause()
        timer.invalidate()
    }
    
    @IBAction func sliderMoved(_ sender: Any) {
        player.volume = slider.value
    }
    
    @IBAction func scrubberMoved(_ sender: Any) {
        player.currentTime = TimeInterval(scrubber.value)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let audioPath = Bundle.main.path(forResource: "[FMAB] Period - Chemistry", ofType: "mp3")
        
        do {
            
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            
            scrubber.maximumValue = Float(player.duration)
            
            player.play()
            
        } catch {
            
            // Process any errors
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

