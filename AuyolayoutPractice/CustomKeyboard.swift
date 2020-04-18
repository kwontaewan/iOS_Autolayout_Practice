//
//  CustomKeyboard.swift
//  AuyolayoutPractice
//
//  Created by Gunter on 2020/04/18.
//  Copyright © 2020 Gunter. All rights reserved.
//

import UIKit

protocol CustomKeyboardDelegate: class {
    func keyboardTapped(str: String)
}

class CustomKeyboard: UIView {

    weak var delegate: CustomKeyboardDelegate?
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        delegate?.keyboardTapped(str: sender.titleLabel!.text!)
    }
}
