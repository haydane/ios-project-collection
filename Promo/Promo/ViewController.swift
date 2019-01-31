//
//  ViewController.swift
//  Promo
//
//  Created by Hay Dane on 1/29/19.
//  Copyright © 2019 Hay Dane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewInputName: UIView!
    @IBOutlet weak var viewInputPassword: UIView!
    @IBOutlet weak var viewBtnLogin: UIView!
    @IBOutlet weak var tfUsername: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        viewInputName.layer.cornerRadius = viewInputName.bounds.height/2
        viewInputPassword.layer.cornerRadius = viewInputName.bounds.height/2
        viewBtnLogin.layer.cornerRadius = viewBtnLogin.bounds.height/2
        viewInputName.layer.masksToBounds = true
        viewInputPassword.layer.masksToBounds = true
        
        //handle view on click
        let tabGestureViewLogin = UITapGestureRecognizer(target: self, action: #selector(onTab(tabGestureRecognizer:)))
        
        viewBtnLogin.isUserInteractionEnabled = true
        viewBtnLogin.addGestureRecognizer(tabGestureViewLogin)
    }
    
    @objc func onTab(tabGestureRecognizer: UITapGestureRecognizer)
    {
        if(tfUsername.text == "haydane" && tfPassword.text == "haydane")
        {
            let vcMainController = storyboard?.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
            self.present(vcMainController, animated: true, completion: nil)
        }
        else
        {
            let alert = UIAlertController(title: "Warning", message: "Wrong Username or Password", preferredStyle: .alert)
            let okay = UIAlertAction(title: "Ok", style: .default) { (action) in
            }
            let cancel = UIAlertAction(title: "Cancel", style: .default) { (action) in
            }
            alert.addAction(okay)
            alert.addAction(cancel)
            self.present(alert, animated: true, completion: nil)
        }
    }
}

