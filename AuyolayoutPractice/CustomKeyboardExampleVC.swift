//
//  CustomKeyboardExampleVC.swift
//  AuyolayoutPractice
//
//  Created by Gunter on 2020/04/18.
//  Copyright © 2020 Gunter. All rights reserved.
//

import UIKit

class CustomKeyboardExampleVC: UIViewController {

    @IBOutlet weak var firstTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myKeyboard = Bundle.main.loadNibNamed(
            "CustomKeyboard",
            owner: nil,
            options: nil
        )
        
        let myKeyboardView = myKeyboard?.first as! CustomKeyboard
        myKeyboardView.delegate = self
        
        firstTextField.inputView = myKeyboardView
        
    }
    

}

extension CustomKeyboardExampleVC: CustomKeyboardDelegate {
    
    func keyboardTapped(str: String) {
        firstTextField.text = str
    }
    
}
