//
//  main4Cell.swift
//  TrendyolCloneApp
//
//  Created by Bayram Yeleç on 23.10.2024.
//

import UIKit

class main4Cell: UICollectionViewCell {
    
    @IBOutlet weak var customImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    var items: PopulerKategoriler?
    
    func setup(){
        customImageView.image = items?.image
        titleLabel.text = items?.title
        layer.cornerRadius = 10
        layer.backgroundColor = UIColor(
            red: CGFloat(drand48()),
            green: CGFloat(drand48()),
            blue: CGFloat(drand48()),
            alpha: 1.0
        ).cgColor.copy(alpha: 0.4)

    }
    
}
