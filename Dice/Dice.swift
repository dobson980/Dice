//
//  rollDice.swift
//  Dice
//
//  Created by Tom Dobson on 8/10/17.
//  Copyright © 2017 Dobson Studios. All rights reserved.
//

import UIKit

class Dice {
    
    var dice = [#imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6")]
    
    func randomRoll() -> Int{
        return Int(arc4random_uniform(6))
    }
    
    func assignDiceFace() -> UIImage {
        return dice[randomRoll()]
    }
    
}
