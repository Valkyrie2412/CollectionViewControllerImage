//
//  CollectionViewCell.swift
//  CollectionViewControllerImage
//
//  Created by Hiếu Nguyễn on 10/29/18.
//  Copyright © 2018 Hiếu Nguyễn. All rights reserved.
//

import UIKit

protocol CollectionViewCellDelegate: class {
    func removeItem(at indexPath: IndexPath)
}

class CollectionViewCell: UICollectionViewCell {
    var indexPath: IndexPath!
    weak var delegate: CollectionViewCellDelegate?
    @IBOutlet weak var photoImage: UIImageView!
    
    @IBAction func removeItem(_ sender: UIButton) {
        if indexPath != nil {
            delegate?.removeItem(at: indexPath)
        }
    }
    
}
