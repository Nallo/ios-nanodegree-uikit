//
//  ViewController.swift
//  TextFields
//
//  Created by Jason on 11/11/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // Outlets
    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var cashTextField: UITextField!
    @IBOutlet weak var lockableTextField: UITextField!
    @IBOutlet weak var lockSwitch: UISwitch!
    
    // Text Field Delegate objects
    let zipCodeTextFieldDelegate = ZIPCodeTextFieldDelegate()
    let cashTextFieldDelegate = CashTextFieldDelegate()

    // Life Cycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the delegates
        self.zipCodeTextField.delegate = zipCodeTextFieldDelegate
        self.cashTextField.delegate = cashTextFieldDelegate
    }
    
    /// Fired when the Switch changes its value.
    ///
    /// :sender: the `UISwitch`.
    ///
    @IBAction func switchValueChanged(sender: UISwitch) {
        lockableTextField.enabled = sender.on
    }
}