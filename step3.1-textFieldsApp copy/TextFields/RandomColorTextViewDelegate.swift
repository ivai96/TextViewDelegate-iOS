//
//  RandomColorTextViewDelegate.swift
//  TextFields
//
//  Created by Ivana Krivchevska on 1/22/20.
//  Copyright © 2020 Udacity. All rights reserved.
//

import UIKit

class RandomColorTextViewDelegate: NSObject, UITextFieldDelegate {

    func randomColor() -> UIColor {
        
        let colors:[UIColor] = [.red, .orange, .yellow, .green, .blue, .purple, .brown]
        
        let randomIndex = Int(arc4random() % UInt32(colors.count))
        
        return colors[randomIndex]
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        textField.textColor = randomColor()
        return true
    }
    
}
