//
//  DetailViewController.swift
//  table
//
//  Created by Hay Dane on 1/24/19.
//  Copyright © 2019 Hay Dane. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var name : String?
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

       self.lblName.text = name
    }
    


}
