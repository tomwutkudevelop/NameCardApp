//
//  Sign up View Controller.swift
//  NameCardApp
//
//  Created by tomwu on 2019/11/7.
//  Copyright © 2019 tomwu. All rights reserved.
//
import Foundation
import UIKit
import Firebase
class Sign_up_View_Controller: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var Username: UITextField!
    @IBOutlet weak var Email: UITextField!
    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var Next_btn: UIButton!
    
    override func  viewDidLoad() {
        super.viewDidLoad()
        self.hidekeyboard()
    }
    
    @objc func handleSignUp() {
        guard let username = Username.text else { return }
        guard let email = Email.text else { return }
        guard let pass = Password.text else { return }
        
        Auth.auth().createUser(withEmail: email, password: pass)
        {user, error in
            if error == nil && user != nil
            {
                print("User created")
            }
            else{
                print("The user can't build:\(error!.localizedDescription)")
            }
            
        }
        
    }
}

extension UIViewController{
    func hidekeyboard()
    {
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(DismissKeyBoard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func DismissKeyBoard()
    {
        view.endEditing(true)
    }
}
