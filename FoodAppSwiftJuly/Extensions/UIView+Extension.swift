//
//  UIView+Extension.swift
//  FoodAppSwiftJuly
//
//  Created by MiteshKumar Patel on 14/08/24.
//

import UIKit

//Create Extension for corner radius so we need to extend UIView
extension UIView {
    
    //Computed property , define like variable but it returns value
  @IBInspectable var cornerRadius: CGFloat {
        get {
            return cornerRadius
        }
        set {
            self.layer.cornerRadius = newValue
        }
    }
    
}
