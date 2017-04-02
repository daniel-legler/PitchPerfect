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
    
    enum ButtonType: Int { case slow = 0, fast, high, low, echo, reverb }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAudio()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        configureUI(.notPlaying)
    }

    @IBAction func playSoundForButton(_ sender: UIButton){
        
        switch(ButtonType(rawValue: sender.tag)!) {
            
        case .slow:
            playSound(rate: 0.5)
        case .fast:
            playSound(rate: 1.5)
        case .high:
            playSound(pitch: 1000)
        case .low:
            playSound(pitch: -1000)
        case .echo:
            playSound(echo: true)
        case .reverb:
            playSound(reverb: true)
        }
        
        configureUI(.playing)
    }
    
    @IBAction func stopPressed(_ sender: UIButton) {
        stopAudio()
    }

}
