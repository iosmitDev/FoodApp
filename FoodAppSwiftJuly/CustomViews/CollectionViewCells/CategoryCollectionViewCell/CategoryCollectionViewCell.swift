//
//  CategoryCollectionViewCell.swift
//  FoodAppSwiftJuly
//
//  Created by MiteshKumar Patel on 15/08/24.
//

import UIKit
import Kingfisher

class CategoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var categoryImageView: UIImageView!    
    @IBOutlet weak var categoryTitleLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCategoryCollectionViewCell(category: DishCategory) {
        
        categoryTitleLabel.text = category.name
        
        categoryImageView.kf.setImage(with: category.image.asURL)
    }

}
