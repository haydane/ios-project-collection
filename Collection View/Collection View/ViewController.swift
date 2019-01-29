//
//  ViewController.swift
//  Collection View
//
//  Created by Hay Dane on 1/25/19.
//  Copyright © 2019 Hay Dane. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource {
    let list : [String] = ["hello", "world", "welcome", "cambodia"]
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ProfileCollectionViewCell
        cell.lblName.text = list[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vcProfile = storyboard?.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
        
        vcProfile.name = list[indexPath.row]
        self.navigationController?.pushViewController(vcProfile, animated: true)
//        self.present(vcProfile, animated: true)
            
    }


}

