//
//  ViewController.swift
//  NameCardApp
//
//  Created by tomwu on 2019/11/6.
//  Copyright © 2019 tomwu. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var Email: UITextField!
    @IBOutlet weak var Password: UITextField!
    override func  viewDidLoad() {
        super.viewDidLoad()
        self.hidekeyboard()
    }
    
    @IBAction func Dismiss_btn(_ sender: UIButton) {
     dismiss(animated: true, completion: nil)
    }


}
