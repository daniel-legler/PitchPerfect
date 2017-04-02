//
//  SoundEffectsVC.swift
//  PitchPerfect
//
//  Created by Daniel Legler on 3/27/17.
//  Copyright © 2017 Daniel Legler. All rights reserved.
//

import UIKit
import AVFoundation

class SoundEffectsVC: UIViewController {

    @IBOutlet weak var slow: UIButton!
    @IBOutlet weak var fast: UIButton!
    @IBOutlet weak var lowPitch: UIButton!
    @IBOutlet weak var highPitch: UIButton!
    @IBOutlet weak var echo: UIButton!
    @IBOutlet weak var reverb: UIButton!
    @IBOutlet weak var stop: UIButton!
    
    var audioFile: AVAudioFile!
    var audioEngine: AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: Timer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func playSoundForButton(_ sender: UIButton){
        print("playing ")
    }
    
    @IBAction func stopPressed(_ sender: UIButton) {
        
    }

}
