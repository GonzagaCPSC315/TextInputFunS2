//
//  ViewController.swift
//  TextInputFunS2
//
//  Created by Gina Sprint on 10/13/20.
//  Copyright © 2020 Gina Sprint. All rights reserved.
//

import UIKit

// MARK: - First Responder Status
// when you tap a textfield, it becomes the keyboards first responder
// to dismiss the keyboard, the text field needs to "resign as first responder"
// 2 ways to do this
// 1. user the taps on the background view
// need a UITapGestureRecognizer to do this
// 2. user the taps the return key
// need a UITextFieldDelegate to do this


class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    @IBOutlet var textField: UITextField!
    
    @IBAction func textFieldEditingChanged(_ sender: UITextField) {
        if let text = sender.text {
            if text != "" {
                label.text = text
            }
            else {
                label.text = "Enter text below"
            }
        }
    }
    
    @IBAction func backgroundTapped(_ sender: UITapGestureRecognizer) {
        print("background tapped")
        textField.resignFirstResponder()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

