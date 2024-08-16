//
//  HomeViewController.swift
//  FoodAppSwiftJuly
//
//  Created by MiteshKumar Patel on 15/08/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    var categories: [DishCategory] = [
        .init(id: "1", name: "Dish1", image: "https://picsum.photos/100/200"),
        .init(id: "2", name: "Dish2", image: "https://picsum.photos/100/200"),
        .init(id: "3", name: "Dish3", image: "https://picsum.photos/100/200"),
        .init(id: "4", name: "Dish4", image: "https://picsum.photos/100/200"),
        .init(id: "5", name: "Dish5", image: "https://picsum.photos/100/200")
    ]
    
    //Create DataSource for popular dish
    var popularDish: [PopularDish] = [
        .init(id: "1", name: "Dal dhokli", image: "https://picsum.photos/100/200", description: "Dal dhokli dish is very smooth", calories: 23.23),
        .init(id: "2", name: "Dhokla", image: "https://picsum.photos/100/200", description: "Dhokla dish is very soft and pure", calories: 28.56743434343),
        .init(id: "3", name: "Thepla", image: "https://picsum.photos/100/200", description: "Thepla dish is very awesome", calories: 4530.234567),
        .init(id: "4", name: "Dalbati", image: "https://picsum.photos/100/200", description: "Dalbati dish is very tasty and awesome", calories: 40.1244),
        .init(id: "5", name: "Samosa", image: "https://picsum.photos/100/200", description: "Samosa dish is very tasty", calories: 350)
    
    ]
    
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var popularCollectionView: UICollectionView!
    @IBOutlet weak var chefsCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //title = "Yummie".
      registerCollectionViewCell()
    }
    
    func rating(){
        
    }
    func foodCategory(){

    }
    private func registerCollectionViewCell() {
        categoryCollectionView.register(UINib(nibName: "CategoryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CategoryCollectionViewCell")
        
        popularCollectionView.register(UINib(nibName: PopularDishCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: PopularDishCollectionViewCell.identifier)
        
     //   chefsCollectionView.register(UINib(nibName: "CategoryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CategoryCollectionViewCell")
    }

}
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
                
        switch collectionView {
        case categoryCollectionView:
            return categories.count
        case popularCollectionView:
            return popularDish.count
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        switch collectionView {
        case categoryCollectionView:
            let cell = (collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCollectionViewCell", for: indexPath) as? CategoryCollectionViewCell)!
            cell.setupCategoryCollectionViewCell(category: categories[indexPath.row])
            return cell
        case popularCollectionView:
            let cell = (collectionView.dequeueReusableCell(withReuseIdentifier: PopularDishCollectionViewCell.identifier, for: indexPath) as? PopularDishCollectionViewCell)!
            cell.setupPopularDishCollectionViewCell(popularDish: popularDish[indexPath.row])
            return cell
        default:
            return UICollectionViewCell()
        }
        
        
    }
    
}
