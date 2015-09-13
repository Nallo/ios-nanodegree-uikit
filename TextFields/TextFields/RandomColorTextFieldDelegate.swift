//
//  RandomColorTextFieldDelegate.swift
//  TextFields
//
//  Created by stefano on 13/09/15.
//  Copyright (c) 2015 Udacity. All rights reserved.
//

import Foundation
import UIKit

class RandomColorTextFieldDelegate: NSObject, UITextFieldDelegate
{
    let colors = [UIColor.blackColor(),
        UIColor.redColor(),
        UIColor.orangeColor(),
        UIColor.blueColor(),
        UIColor.greenColor(),
        UIColor.purpleColor()]
    
    /// :returns: a random color from those declared in `colors`.
    func randomColor() -> UIColor {
        let randomIndex = Int(arc4random() % UInt32(colors.count))
        return colors[randomIndex]
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        textField.textColor = randomColor()
        return true
    }
}
