//
//  ViewController.swift
//  table
//
//  Created by Hay Dane on 1/23/19.
//  Copyright © 2019 Hay Dane. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    var list: [String] = ["hello","world","welcome","cambodia"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProfileTableViewCell
        cell.imgProfile.image = UIImage(named: "coffee.jpeg")
        cell.lblProfileName?.text = list[indexPath.row]
        //cell.lblProfileGender.text = "Mengly"
        
        return cell
    }
    //DidSelectRowAt
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.deselectRow(at: indexPath, animated: true)
        print(list[indexPath.row])
       // self.performSegue(withIdentifier: "toUser", sender: indexPath.row)
    
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        vc.name = list[indexPath.row]
    
      self.navigationController?.pushViewController(vc, animated: true)
        
    }


    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }



}

