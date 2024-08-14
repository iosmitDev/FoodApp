//
//  OnboardingViewController.swift
//  FoodAppSwiftJuly
//
//  Created by MiteshKumar Patel on 14/08/24.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var nextButton: UIButton!
    
    var slide: [OnboardingSlide] = []
   // var slider = OnboardingSlide() If want to make like string class how to do, check once creating class
       
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        
        
    }
        
}

extension OnboardingViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    //numberOfItemsInSection in collectionview whereas tableview has numberOfrows
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        slide.count
    }
    
    //cellForItemAt method //Cellforrowat in Tablview
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
     
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OnboardingCollectionViewCell", for: indexPath) as? OnboardingCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.onBoardingSlideData = slide[indexPath.row]
        
        return cell
        
    }
    
}
