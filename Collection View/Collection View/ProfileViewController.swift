//
//  ProfileViewController.swift
//  Collection View
//
//  Created by Hay Dane on 1/28/19.
//  Copyright © 2019 Hay Dane. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    var name : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lblName.text = name
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
