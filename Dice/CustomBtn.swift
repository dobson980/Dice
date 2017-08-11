//
//  CustomBtn.swift
//  Dice
//
//  Created by Tom Dobson on 8/10/17.
//  Copyright © 2017 Dobson Studios. All rights reserved.
//

import UIKit

class RoundedCornerButton: UIButton {
    override func awakeFromNib() {
        layer.cornerRadius = 10
        clipsToBounds = true
    }
}
