//
//  String+Extension.swift
//  FoodAppSwiftJuly
//
//  Created by MiteshKumar Patel on 15/08/24.
//

import Foundation

extension String {
    
    //Create new computed property named asURL is type of URL and return URL from String
    var asURL: URL? {
        return URL(string: self)
    }
    
}
