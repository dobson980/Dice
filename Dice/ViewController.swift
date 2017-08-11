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

    @IBOutlet weak var rollDiceBtn: UIButton!
    @IBOutlet weak var diceLeft: UIImageView!
    @IBOutlet weak var diceRight: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceFaceImages()

    }
    
    @IBAction func rollButton(_ sender: Any) {
        
        updateDiceFaceImages()
        
    }
    
    func updateDiceFaceImages() {
        
        diceLeft.image = gameDice.assignDiceFace()
        diceRight.image = gameDice.assignDiceFace()
        
    }
    
}

