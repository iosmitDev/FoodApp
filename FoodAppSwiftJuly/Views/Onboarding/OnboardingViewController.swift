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
    
    var currentPage = 0 {
        
        didSet {
            pageControl.currentPage = currentPage
            currentPage == slide.count - 1 ? nextButton.setTitle("Get Started", for: .normal) : nextButton.setTitle("Next", for: .normal)
            
        }
    }
    
    var slide: [OnboardingSlide] = []
    // var slider = OnboardingSlide() If want to make like string class how to do, check once creating class
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        slide = [OnboardingSlide(title: "Wlcome to india", description: "f want to make like string class how to do, check once creating class", image: UIImage(named: "slide1")!),
                 OnboardingSlide(title: "Wlcome to Pune", description: "f want to make like string class how to do, check once creating class", image: UIImage(named: "slide2")!),
                 OnboardingSlide(title: "Wlcome to Gujarat", description: "f want to make like string class how to do, check once creating class", image: UIImage(named: "slide3")!)
        ]
        pageControl.numberOfPages = slide.count
        
    }
    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        
        if currentPage == slide.count - 1 {
            print("Go to Next Page")
            
            let nextVC = storyboard?.instantiateViewController(withIdentifier: "openHomePage") as! UINavigationController
            nextVC.modalPresentationStyle = .fullScreen
            nextVC.modalTransitionStyle = .flipHorizontal
            present(nextVC, animated: true, completion: nil)
        }
        else {
            
            collectionView.isPagingEnabled = false
            currentPage += 1
            
            //get indexpath of collectionView
            let indexpath = IndexPath(item: currentPage, section: 0)
            
            //set collection view scrollitem at index path
            collectionView.scrollToItem(at: indexpath, at: .centeredHorizontally, animated: true)
            
            collectionView.isPagingEnabled = true
        }
        
    }
    
}

extension OnboardingViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
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
        // cell.collectionViewCellConfiguration(slide[indexPath.row])
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    //scrollViewDidEndDecelerating method we know the end of scrolling and can set paging
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        
        
        let width = scrollView.frame.width
        
        print(currentPage)
        
        currentPage = Int((scrollView.contentOffset.x) / width)
        
    }
}
