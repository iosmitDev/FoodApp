//
//  PopularDishCollectionViewCell.swift
//  FoodAppSwiftJuly
//
//  Created by MiteshKumar Patel on 15/08/24.
//

import UIKit
import Kingfisher

class PopularDishCollectionViewCell: UICollectionViewCell {

    
    static let identifier = String(describing: PopularDishCollectionViewCell.self)
    //static let identifier = "PopularDishCollectionViewCell"
    
    @IBOutlet weak var popularDishTitleLabel: UILabel!
    @IBOutlet weak var popularDishImageView: UIImageView!
    @IBOutlet weak var popularDishCaloriesLabel: UILabel!
    @IBOutlet weak var popularDishDescriptionLabel: UILabel!
 
    func setupPopularDishCollectionViewCell(popularDish: PopularDish) {
        
        popularDishTitleLabel.text = popularDish.name
        popularDishImageView.kf.setImage(with: popularDish.image?.asURL)
        popularDishCaloriesLabel.text =  popularDish.formattedCalories
        popularDishDescriptionLabel.text = popularDish.description
      
    }

}
