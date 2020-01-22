//
//  ViewController.swift
//  MyTableView2
//
//  Created by Deepika R on 27/02/19.
//  Copyright © 2019 Deepika R. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tableview: UITableView!
    var arr = ["Burger","Fries","Pasta","Rolls"]
    var img = ["burger","fries","pasta","rolls"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.textLabel?.text = "Deepika"
//        cell.detailTextLabel?.text = "Software Engineer"
        cell.textLabel?.text = arr[indexPath.row]
        cell.imageView?.image = UIImage(named: img[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120 
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

