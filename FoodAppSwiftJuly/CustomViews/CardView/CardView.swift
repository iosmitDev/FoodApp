//
//  CardView.swift
//  FoodAppSwiftJuly
//
//  Created by MiteshKumar Patel on 15/08/24.
//

import UIKit

//We have to override method to create custom card view
class CardView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialSetup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initialSetup()
    }
    
    private func initialSetup() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = .zero //No angle of shadow
        layer.cornerRadius = 10
        layer.shadowOpacity = 0.1       
        cornerRadius = 10
    }
}
