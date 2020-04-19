//
//  PopupExampleVC.swift
//  AuyolayoutPractice
//
//  Created by Gunter on 2020/04/19.
//  Copyright © 2020 Gunter. All rights reserved.
//

import UIKit

class PopupExampleVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func showPopup(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Popup", bundle: nil)
        
        let popupVC = storyboard
            .instantiateViewController(
                withIdentifier: "PopupVC"
        )
        
        popupVC.modalPresentationStyle = .overCurrentContext
        
        self.present(
            popupVC,
            animated: false,
            completion: nil
        )
        
        
        
    }


}
