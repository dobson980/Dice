//
//  sound.swift
//  Dice
//
//  Created by Tom Dobson on 8/10/17.
//  Copyright © 2017 Dobson Studios. All rights reserved.
//

import Foundation
import AVFoundation
protocol soundBytePath {
    var path: String { get set }
}

protocol soundByteUrl {
    var diceURL: URL { get set }
}

class DiceSoundByte: soundBytePath, soundByteUrl {
    
    var path: String
    var diceURL: URL
    var diceSound: AVAudioPlayer!
    
    init?(filePath: String, ext: String) {
        self.path = Bundle.main.path(forResource: filePath, ofType: ext)!
        self.diceURL = URL(fileURLWithPath: path)
    }
    
    func prepareSound() {
        do {
            try diceSound = AVAudioPlayer(contentsOf: diceURL)
            diceSound.prepareToPlay()
        }
        catch let error as NSError {
            print("\(error.debugDescription)")
            print("Error Preparing Sound")
        }
    }
    
    func play() {
        if diceSound.isPlaying {
            diceSound.stop()
            diceSound.currentTime = 0
        }
            diceSound.play()
        }
    
}
