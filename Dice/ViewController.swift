//
//  ViewController.swift
//  Dice
//
//  Created by Tom Dobson on 8/10/17.
//  Copyright © 2017 Dobson Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var gameDice = Dice()
    let diceSound = DiceSoundByte(filePath: "dice", ext: "wav")

    @IBOutlet weak var rollDiceBtn: UIButton!
    @IBOutlet weak var diceLeft: UIImageView!
    @IBOutlet weak var diceRight: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceFaceImages()
        diceSound?.prepareSound()

    }
    
    @IBAction func rollButton(_ sender: Any) {
        
        diceSound?.play()
        updateDiceFaceImages()
        
    }
    
    func updateDiceFaceImages() {
        
        diceLeft.image = gameDice.assignDiceFace()
        diceRight.image = gameDice.assignDiceFace()
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        diceSound?.play()
        updateDiceFaceImages()
        
    }
    
}

