//
//  ViewController.swift
//  PostCard
//
//  Created by Dan Manteufel on 9/27/14.
//  Copyright (c) 2014 ManDevil Programming. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var sendMailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        enterNameTextField.delegate = self
        enterMessageTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        nameLabel.text = enterNameTextField.text
        nameLabel.hidden = false
        enterNameTextField.text = nil
        
        messageLabel.text = enterMessageTextField.text
        messageLabel.hidden = false
        enterMessageTextField.text = nil
        
        nameLabel.textColor = UIColor.redColor()
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        sendMailButton.tintColor = UIColor.redColor()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        return true
    }
    
}

