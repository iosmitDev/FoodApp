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
    
    static var identifier = {
        
        return String(describing: OnboardingCollectionViewCell.self)
    }
    
    var onBoardingSlideData: OnboardingSlide? {
        
        didSet {
            debugPrint("didset called")
            collectionViewCellConfiguration()
        }
    }
        
    func collectionViewCellConfiguration() {
        
        guard let onBoardingSlideData else {return}
        
        sliderImageView.image = onBoardingSlideData.image
        sliderTitleLabel.text = onBoardingSlideData.title
        sliderDescriptionLabel.text = onBoardingSlideData.description
        
    }
    
    func collectionViewCellConfiguration(_ slide: OnboardingSlide) {
        
        sliderImageView.image = slide.image
        sliderTitleLabel.text = slide.title
        sliderDescriptionLabel.text = slide.description
        
    }
    
}
