//
//  main2Cell.swift
//  TrendyolCloneApp
//
//  Created by Bayram Yeleç on 23.10.2024.
//

import UIKit

class main2Cell: UICollectionViewCell {
    
    @IBOutlet weak var customImageView: UIImageView!
    @IBOutlet weak var basliklbl: UILabel!
    
    var items: Hizmetler?
    
    func setup(){
        customImageView.image = items?.image
        basliklbl.text = items?.title
        customImageView.layer.cornerRadius = 30
        
    }
    
}

