//
//  OnboardingCollectionViewCell.swift
//  FoodAppSwiftJuly
//
//  Created by MiteshKumar Patel on 14/08/24.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var sliderImageView: UIImageView!
    @IBOutlet weak var sliderTitleLabel: UILabel!
    @IBOutlet weak var sliderDescriptionLabel: UILabel!
    
    var onBoardingSlideData: OnboardingSlide? {
        
        didSet {
            debugPrint("didset called")
            collectionViewCellConfiguration()
        }
    }
        
    func collectionViewCellConfiguration() {
        
        sliderImageView.image = onBoardingSlideData?.image
        sliderTitleLabel.text = onBoardingSlideData?.title
        sliderDescriptionLabel.text = onBoardingSlideData?.description
        
    }
    
}
