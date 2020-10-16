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

// MARK: - Delegation
// delegation is a design patterns
// target action is a functional approach to callbacks (AKA event handling)
// delegation is an OOP to event handling

// example for text fields
// UITextField has a UITextFieldDelegate protocol that contains several optional callback methods
// callbacks notify the delegate when information has changed
// callbacks that ask the delegate what to do
// ex: textFieldShouldReturn() -> Bool

// 3 steps to set up delegation
// 1. ViewController class conforms to the delegate protocol
// 2. let the text field know about its delegate
// 3. the ViewController implements any callbacks in the protocol that it is interested in


class ViewController: UIViewController, UITextFieldDelegate {
    
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
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // called when the return key is pressed
        textField.resignFirstResponder()
        return true 
    }


}

