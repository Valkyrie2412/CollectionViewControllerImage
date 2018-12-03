//
//  CollectionViewController.swift
//  CollectionViewControllerImage
//
//  Created by Hiếu Nguyễn on 10/29/18.
//  Copyright © 2018 Hiếu Nguyễn. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"
let SCREEN_SIZE = UIScreen.main.bounds

class CollectionViewController: UICollectionViewController, CollectionViewCellDelegate {
    
    func removeItem(at indexPath: IndexPath) {
        fruit.remove(at: indexPath.row)
        collectionView.reloadData()
    }
    

    let padding: CGFloat = 1
    let numberOfItems: CGFloat = 3
    
//    var numbers = Array(1...10)
    var fruit = ["apple","strawberry","watermelon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.minimumLineSpacing = padding
        layout.minimumInteritemSpacing = padding
        
//        let widthItem = (SCREEN_SIZE.width - 2*padding - (numberOfItems-1)*padding)/numberOfItems
        let widthItem = (SCREEN_SIZE.width - (numberOfItems + 1)*padding)/numberOfItems
        layout.itemSize = CGSize(width: widthItem, height: widthItem)
        layout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        // Register cell classes

        // Do any additional setup after loading the view.
        
        
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return fruit.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CollectionViewCell
        
        // Configure the cell
        cell.delegate = self
        cell.indexPath = indexPath
//        if indexPath.section == 0 && indexPath.row == 0 {
//            cell.photoImage.image = #imageLiteral(resourceName: "Capture")
//        } else {
//            cell.photoImage.image = UIImage(imageLiteralResourceName: fruit[indexPath.row] )
//        }
//        cell.photoImage.image = UIImage(imageLiteralResourceName: "watermelon")
        cell.photoImage.image = UIImage(named: fruit[indexPath.row])
    
        return cell
    }
    
    

    
    


    

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */
    

}
    


//extension CollectionViewController: UICollectionViewDelegateFlowLayout {
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        return UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return range
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return range
//    }
//
//}



