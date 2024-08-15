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
    
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var popularCollectionView: UICollectionView!
    @IBOutlet weak var chefsCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //title = "Yummie"
      registerCollectionViewCell()
    }
    
    private func registerCollectionViewCell() {
        categoryCollectionView.register(UINib(nibName: "CategoryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CategoryCollectionViewCell")
        
        popularCollectionView.register(UINib(nibName: "CategoryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CategoryCollectionViewCell")
        
     //   chefsCollectionView.register(UINib(nibName: "CategoryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CategoryCollectionViewCell")
    }

}
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        let cell = (collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCollectionViewCell", for: indexPath) as? CategoryCollectionViewCell)!
        cell.setupCategoryCollectionViewCell(category: categories[indexPath.row])
        return cell
    }
    
}
