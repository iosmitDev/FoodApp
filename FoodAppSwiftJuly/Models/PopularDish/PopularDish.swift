//
//  PopularDish.swift
//  FoodAppSwiftJuly
//
//  Created by MiteshKumar Patel on 15/08/24.
//

import Foundation


struct PopularDish {
    
    let id, name, image, description: String?
    let calories: Double?
    
    var formattedCalories: String {
        
        return String(format: "%.2f calories", calories ?? 0)
    }
    
}
 
