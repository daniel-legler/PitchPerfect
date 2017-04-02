//
//  Constants.swift
//  PitchPerfect
//
//  Created by Daniel Legler on 3/27/17.
//  Copyright © 2017 Daniel Legler. All rights reserved.
//

import Foundation

// File path
let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask, true)[0] as String
let recordingName = "recordedVoice.wav"
let pathArray = [dirPath, recordingName]
let audioURL = URL(string: pathArray.joined(separator: "/"))

