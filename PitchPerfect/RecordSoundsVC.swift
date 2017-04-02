//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Daniel Legler on 3/27/17.
//  Copyright © 2017 Daniel Legler. All rights reserved.
//

import UIKit
import AVFoundation


class RecordSoundsVC: UIViewController, AVAudioRecorderDelegate {

    @IBOutlet weak var instructionLabel: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var recordButton: UIButton!
    
    var audioRecorder: AVAudioRecorder!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }


    @IBAction func recordButtonPressed(_ sender: Any) {
        
        // Update UI
        recordButton.isEnabled = false
        stopButton.isEnabled = true
        instructionLabel.text = "Recording in Progress"
        
        // Set up recording session
        let recordingSession = AVAudioSession.sharedInstance()
        try! recordingSession.setCategory(AVAudioSessionCategoryPlayAndRecord, with: .defaultToSpeaker)

        
        // Set up audio recorder
        try! audioRecorder = AVAudioRecorder(url: audioURL!, settings: [:])
        audioRecorder.delegate = self
        audioRecorder.isMeteringEnabled = true
        audioRecorder.prepareToRecord()
        audioRecorder.record()
        
    }

    @IBAction func stopButtonPressed(_ sender: Any) {
        // Update UI
        recordButton.isEnabled = true
        stopButton.isEnabled = false
        instructionLabel.text = "Tap to Record"
        
        // Stop audio recorder
        audioRecorder.stop()
        let audioSession = AVAudioSession.sharedInstance()
        try! audioSession.setActive(false)
    
    }
    
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        // Segue to SoundEffectsVC
        if flag {
            performSegue(withIdentifier: "SoundEffectsVC", sender: nil)
        } else {
            print("Not successful")
        }
    }
    
}

