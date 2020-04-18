//
//  ViewController.swift
//  AuyolayoutPractice
//
//  Created by Gunter on 2020/04/18.
//  Copyright © 2020 Gunter. All rights reserved.
//

import UIKit

class StackViewExampleVC: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var btn1: UIButton!
    
    @IBOutlet weak var btn2: UIButton!
    
    @IBOutlet weak var btn3: UIButton!
    
    @IBOutlet weak var btn4: UIButton!
   
    @IBOutlet weak var btn5: UIButton!
    
    @IBOutlet weak var bnt6: UIButton!
    
    @IBOutlet weak var btn7: UIButton!
    
    @IBOutlet weak var bnt8: UIButton!
    
    @IBOutlet weak var btn9: UIButton!
    
    @IBOutlet weak var btn10: UIButton!
    
    @IBOutlet weak var btn11: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        resultLabel.layer.cornerRadius = 50
        resultLabel.layer.masksToBounds = true
        let btns: [UIButton] = [btn1, btn2, btn3, btn4, btn5, bnt6, btn7, bnt8, btn9, btn10, btn11]
        
        for btn in btns {
            if btn == btn10 {
                 btn.layer.cornerRadius = btn.bounds.height / 2
            } else {
                 btn.layer.cornerRadius = btn.bounds.width / 2
            }
        }
    
    }

}

