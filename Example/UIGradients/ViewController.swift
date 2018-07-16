//
//  ViewController.swift
//  UIGradients
//
//  Created by ozcanzaferayan on 07/13/2018.
//  Copyright (c) 2018 ozcanzaferayan. All rights reserved.
//

import UIKit
import UIGradients

class ViewController: UIViewController, UICollectionViewDelegate,  UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let gradientHeight = 200
        return CGSize(width: collectionView.bounds.size.width, height: CGFloat(gradientHeight))
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return UIGradients.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! CollectionViewCell
        let gradientType = UIGradients(rawValue: indexPath.row)
        let gradient = gradientType?.makeGradientLayer(indexPath.row * 45)
        gradient?.frame = cell.bounds
        cell.label.text = gradientType?.name
        cell.label.textColor = UIColor.white
        if cell.layer.sublayers?.count == 2 {
            cell.layer.sublayers?.remove(at: 0)
        }
        cell.layer.insertSublayer(gradient!, at: 0)
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        collectionView!.collectionViewLayout = layout
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

}

