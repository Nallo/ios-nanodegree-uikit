//
//  ViewController.swift
//  TextFields
//
//  Created by Jason on 11/11/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //TODO: Outlets
    
    //TODO: Text Field Delegate objects
    
    // Life Cycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TODO: Set the four delegates
    }

    
    //TODO Text Field Delegate Methods
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {

        return true;
    }
}

