//
//  main3Cell.swift
//  TrendyolCloneApp
//
//  Created by Bayram Yeleç on 23.10.2024.
//

import UIKit

class main3Cell: UICollectionViewCell {
    
    @IBOutlet weak var customImageView: UIImageView!
    @IBOutlet weak var titlelabel: UILabel!
    @IBOutlet weak var fiyatlabel: UILabel!
    
    var items: PopulerUrunler?
    
    func setup(){
        customImageView.image = items?.image
        titlelabel.text = items?.title
        fiyatlabel.text = "\(items?.fiyat ?? 0) TL"
        layer.borderWidth = 1
        layer.borderColor = UIColor.black.cgColor.copy(alpha: 0.1)
        layer.cornerRadius = 10
    }
    
}

