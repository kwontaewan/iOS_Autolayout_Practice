//
//  LoginVC.swift
//  AuyolayoutPractice
//
//  Created by Gunter on 2020/04/19.
//  Copyright © 2020 Gunter. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!

    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var emailError: UILabel!
    
    @IBOutlet weak var passwordError: UILabel!
    
    var emailErrorHeight: NSLayoutConstraint!
    
    var passwordErrorHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.addTarget(
            self,
            action: #selector(textFieldEdited),
            for: .editingChanged
        )
        
        passwordTextField.addTarget(
            self,
            action: #selector(textFieldEdited),
            for: .editingChanged
        )
        
        emailErrorHeight = emailError
        .heightAnchor
        .constraint(equalToConstant: 0)
        
        passwordErrorHeight = passwordError
        .heightAnchor
        .constraint(equalToConstant: 0)
        
    }
    
    @objc func textFieldEdited(textField: UITextField) {
        
        if textField == emailTextField {
            
            if isValidEmail(email: textField.text) == true {
                emailErrorHeight.isActive = true
            } else {
                emailErrorHeight.isActive = false
            }
            
        } else {
            if isValidPassword(pw: textField.text) == true {
                passwordErrorHeight.isActive = true
            } else {
                passwordErrorHeight.isActive = false
            }
        }
        
        UIView.animate(withDuration: 0.1) {
            self.view.layoutIfNeeded()
        }
        
    }
    
    func isValidEmail(email:String?) -> Bool {
        
        guard email != nil else { return false }
        
        let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let pred = NSPredicate(format:"SELF MATCHES %@", regEx)
        return pred.evaluate(with: email)
        
    }
    
    
    func isValidPassword(pw: String?) -> Bool {
        if let haspassword = pw {
            if haspassword.count < 8 {
                return false
            }
        }
        
        return true
    }
    

}
