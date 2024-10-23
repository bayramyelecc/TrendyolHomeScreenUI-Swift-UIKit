//
//  main1Cell.swift
//  TrendyolCloneApp
//
//  Created by Bayram Yeleç on 23.10.2024.
//

import UIKit

class main1Cell: UICollectionViewCell {
    
    @IBOutlet weak var customImageView: UIImageView!
    
    var items: Banner?
    
    func setupUI(){
        customImageView.image = items?.image
        customImageView.layer.cornerRadius = 10
    }
    
}

