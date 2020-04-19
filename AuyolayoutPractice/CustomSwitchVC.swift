//
//  CustomSwitchVC.swift
//  AuyolayoutPractice
//
//  Created by Gunter on 2020/04/19.
//  Copyright © 2020 Gunter. All rights reserved.
//

import UIKit

class CustomSwitchVC: UIViewController {

    @IBOutlet weak var switchBtn: UIButton!
    
    @IBOutlet weak var switchBG: UIView!
    
    @IBOutlet weak var buttonCenterX: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switchBtn.layer.cornerRadius = switchBtn.bounds.width / 2
        switchBG.layer.cornerRadius = switchBtn.bounds.width / 2
        switchBG.backgroundColor = UIColor.yellow
    }
    

    @IBAction func selectedButton(_ sender: UIButton) {
        
        if buttonCenterX.constant == 75 {
            buttonCenterX.constant = -75
            switchBG.backgroundColor = UIColor.lightGray
        } else {
            buttonCenterX.constant = 75
            switchBG.backgroundColor = UIColor.yellow
        }
    
        
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
}
