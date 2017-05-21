//
//  ViewController.swift
//  SoundsThree
//
//  Created by jgsSIPrep on 5/21/17.
//  Copyright © 2017 jgsSIPrep. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    var musicEffect: AVAudioPlayer = AVAudioPlayer()
    var musicEffectTwo: AVAudioPlayer = AVAudioPlayer()
    var musicEffectThree: AVAudioPlayer = AVAudioPlayer()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let musicFile = Bundle.main.path(forResource: "rain", ofType: ".mp3")
        
        do{
            
        try musicEffect = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile!))
        }
        
        catch {
            
            print(error)
        }
        
        
        let musicFileTwo = Bundle.main.path(forResource: "wind", ofType: ".mp3")
        
        
        do {
            
            
            try musicEffectTwo = AVAudioPlayer(contentsOf: URL(fileURLWithPath: musicFileTwo!))
            
        }
        
        catch {
            
            print(error)
        }
        
        let musicFileThree = Bundle.main.path(forResource:"thunder",ofType: ".mp3")
        
        
        do {
            
            
            try musicEffectThree = AVAudioPlayer(contentsOf: URL(fileURLWithPath: musicFileThree!))
            
        }
            
        catch {
            
            print(error)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func playRain(_ sender: Any) {
        musicEffect.play()
    }
    
    @IBAction func pauseRain(_ sender: Any) {
        musicEffect.stop()
        
    }
    
    
    @IBAction func playWind(_ sender: Any) {
        musicEffectTwo.play()
    }
    
    @IBAction func pauseWind(_ sender: Any) {
        musicEffectTwo.stop()
    }
    
    @IBAction func playThunder(_ sender: Any) {
        musicEffectThree.play()
    }
    
    
    @IBAction func pauseThunder(_ sender: Any) {
        musicEffectThree.stop()
    }
    
    

}

