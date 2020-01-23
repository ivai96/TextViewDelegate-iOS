//
//  ZipCodeTextFieldDelegate.swift
//  TextFields
//
//  Created by Ivana Krivchevska on 1/23/20.
//  Copyright © 2020 Udacity. All rights reserved.
//

import UIKit

class ZipCodeTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
  
        return range.location < 5
    }
}
