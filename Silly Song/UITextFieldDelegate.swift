//
//  UITextFieldDelegate.swift
//  Silly Song
//
//  Created by Diego Malone on 7/14/16.
//  Copyright © 2016 Diego Malone. All rights reserved.
//

import Foundation
import UIKit

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}