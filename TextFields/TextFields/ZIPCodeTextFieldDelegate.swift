//
//  ZIPCodeTextFieldDelegate.swift
//  TextFields
//
//  Created by stefano on 13/09/15.
//  Copyright (c) 2015 Udacity. All rights reserved.
//

import Foundation
import UIKit

class ZIPCodeTextFieldDelegate: NSObject, UITextFieldDelegate
{
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        let currentTextLength = count(textField.text)
        
        // Accept chanches iff we have less than 5 chars or we press backspace (string will be empty).
        if currentTextLength < 5 || count(string)==0 {
            return true
        } else {
            return false
        }
    }
}
