//
//  MainViewController.swift
//  Promo
//
//  Created by Hay Dane on 1/29/19.
//  Copyright © 2019 Hay Dane. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    let fruitName: [String] = ["apple","orange","banana","durian"]
    let fruitImg: [String] = ["apple","orange","banana","durian"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruitName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FruitTableViewCell
//        cell.imgFruit.image
        cell.lblFruitName.text = fruitName[indexPath.row]
        cell.imgFruit.image = UIImage(named: fruitImg[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.deselectRow(at: indexPath, animated: true)    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
    
    }
    
    

}
