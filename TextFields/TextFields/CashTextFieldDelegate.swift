//
//  CashTextFieldDelegate.swift
//  TextFields
//
//  Created by stefano on 13/09/15.
//  Copyright (c) 2015 Udacity. All rights reserved.
//

import Foundation
import UIKit

class CashTextFieldDelegate: NSObject, UITextFieldDelegate
{
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        if count(string) > 0 { // adding char
            // find the dot (.) in the string
            if let decimalSeparatorRange = textField.text.rangeOfString(".", options: NSStringCompareOptions.CaseInsensitiveSearch) {
                // remove the dot (.)
                textField.text.removeRange(decimalSeparatorRange)
                
                // append the new digit
                textField.text.extend(string)
                
                // place the dot (.) at 2 positions from the end
                let indexOfSplice = textField.text.endIndex.predecessor().predecessor()
                textField.text.splice(".", atIndex: indexOfSplice)
                
                // remove the leading zero if present
                let indexOfLeadingZero = textField.text.startIndex.successor()
                if textField.text[indexOfLeadingZero] == "0" {
                    textField.text.removeAtIndex(indexOfLeadingZero)
                }
            }
        } else { // deleting char
            // delete last char and fill with leading zeros
            let lastStringElementIndex = textField.text.endIndex.predecessor()
            textField.text.removeAtIndex(lastStringElementIndex)
            if count(textField.text) < 5 {
                textField.text.insert("0", atIndex: textField.text.startIndex.successor())
            }

            // find the dot (.) in the string
            if let decimalSeparatorRange = textField.text.rangeOfString(".", options: NSStringCompareOptions.CaseInsensitiveSearch) {
                // remove the dot (.)
                textField.text.removeRange(decimalSeparatorRange)
                
                // place the dot (.) at 2 positions from the end
                let indexOfSplice = textField.text.endIndex.predecessor().predecessor()
                textField.text.splice(".", atIndex: indexOfSplice)
            }
        }
        return false
    }
}