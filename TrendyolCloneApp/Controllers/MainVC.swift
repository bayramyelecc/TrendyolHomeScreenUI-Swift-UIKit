//
//  ViewController.swift
//  TrendyolCloneApp
//
//  Created by Bayram Yeleç on 23.10.2024.
//

import UIKit

class MainVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView1: UICollectionView!
    @IBOutlet weak var collectionView2: UICollectionView!
    @IBOutlet weak var collectionView3: UICollectionView!
    @IBOutlet weak var collectionView4: UICollectionView!
    @IBOutlet weak var headerView: UIView!
    
    let colors: [UIColor] = [
        .green,
        .blue,
        .yellow,
        .orange,
        .cyan,
        .magenta
    ]
    
    var models: [Banner] = [
        Banner(image: UIImage(named: "banner4")),
        Banner(image: UIImage(named: "banner3")),
        Banner(image: UIImage(named: "banner2")),
        Banner(image: UIImage(named: "banner1"))
    ]
    var models1: [Hizmetler] = [
        Hizmetler(image: UIImage(named: "hizlimarket"), title: "Hızlı Market"),
        Hizmetler(image: UIImage(named: "yemek"), title: "Yemek"),
        Hizmetler(image: UIImage(named: "futbolaski"), title: "Futbol Aşkı"),
        Hizmetler(image: UIImage(named: "dolap"), title: "Dolap"),
        Hizmetler(image: UIImage(named: "kupon"), title: "Kuponlar"),
        Hizmetler(image: UIImage(named: "kupon"), title: "Kategoriler")
    ]
    var models2: [PopulerUrunler] = [
        PopulerUrunler(image: UIImage(named: "pop1"), title: "Cep Detaylı Gömlek Regular Fit", fiyat: 1.599),
        PopulerUrunler(image: UIImage(named: "pop3"), title: "IPhone 12 64 GB Beyaz Cep Telefonu Aksesuarsız Kutu", fiyat: 27.999),
        PopulerUrunler(image: UIImage(named: "pop2"), title: "Loose Fit Jeans", fiyat: 779.99),
        PopulerUrunler(image: UIImage(named: "pop4"), title: "Macbook Air M1 Çip 8gb 256gb Ssd Macos 13 Qhd Taşınabilir Bilgisayar Uzay Grisi", fiyat: 29.749),
        PopulerUrunler(image: UIImage(named: "pop"), title: "Loose Fit Kapüşonlu Üst", fiyat: 799.99)
    ]
    var models3: [PopulerKategoriler] = [
        PopulerKategoriler(image: UIImage(named: "swit"), title: "Sweatshirt"),
        PopulerKategoriler(image: UIImage(named: "bluz"), title: "Bluz"),
        PopulerKategoriler(image: UIImage(named: "pantolon"), title: "Pantolon"),
        PopulerKategoriler(image: UIImage(named: "tisort"), title: "T-Shirt")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupUI2()
        setupUI3()
        setupUI4()
        headerView.backgroundColor = .systemGray6.withAlphaComponent(0.7)
    }
    
    func setupUI(){
        collectionView1.delegate = self
        collectionView1.dataSource = self
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        collectionView1.collectionViewLayout = layout
    }
    
    func setupUI2(){
        collectionView2.delegate = self
        collectionView2.dataSource = self
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        collectionView2.collectionViewLayout = layout
    }
    
    func setupUI3(){
        collectionView3.delegate = self
        collectionView3.dataSource = self
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        collectionView3.collectionViewLayout = layout
    }
    
    func setupUI4(){
        collectionView4.delegate = self
        collectionView4.dataSource = self
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        collectionView4.collectionViewLayout = layout
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == collectionView1 {
            return models.count
        } else if collectionView == collectionView2 {
            return models1.count
        } else if collectionView == collectionView3 {
            return models2.count
        } else if collectionView == collectionView4 {
            return models3.count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == collectionView1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! main1Cell
            let model = models[indexPath.row]
            cell.items = model
            cell.setupUI()
            return cell
        } else if collectionView == collectionView2 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! main2Cell
            let model = models1[indexPath.row]
            cell.items = model
            cell.setup()
            cell.backgroundColor = colors.randomElement()?.withAlphaComponent(0.05)
            cell.layer.cornerRadius = 10
            return cell
        } else if collectionView == collectionView3 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! main3Cell
            let model = models2[indexPath.row]
            cell.items = model
            cell.setup()
            return cell
        } else if collectionView == collectionView4 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell4", for: indexPath) as! main4Cell
            let model = models3[indexPath.row]
            cell.items = model
            cell.setup()
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == collectionView1 {
            return CGSize(width: view.frame.width, height: 150)
        } else if collectionView == collectionView2 {
            return CGSize(width: view.frame.width / 4, height: 100)
        } else if collectionView == collectionView3 {
            return CGSize(width: view.frame.width / 2.5, height: 300)
        } else if collectionView == collectionView4 {
            return CGSize(width: view.frame.width / 2.5, height: 200)
        }
        return CGSize(width: 100, height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if collectionView == collectionView1 {
            
        } else if collectionView == collectionView2{
            return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        } else if collectionView == collectionView3 {
            return UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        } else if collectionView == collectionView4 {
            return UIEdgeInsets(top: 5, left: 5, bottom: 20, right: 5)
        }
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }

}

