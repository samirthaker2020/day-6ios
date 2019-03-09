//
//  ViewController.swift
//  day-6
//
//  Created by MacStudent on 2019-03-09.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    @IBOutlet weak var res: UILabel!
    

    @IBOutlet weak var tbl1: UITableView!
    var countrylist=["India","USA","Canada"]
     var countrycode=["1","2","3"]
    var flag=["india","usa","canada"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tbl1.delegate=self
        self.tbl1.dataSource=self
    }
    func numberOfSections(in tableView: UITableView) -> Int {
    return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return self.countrylist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "countrycell", for: indexPath)
        cell.textLabel?.text=self.countrylist[indexPath.row]
        cell.detailTextLabel?.text=self.countrycode[indexPath.row]
        cell.imageView?.image=UIImage(named: "\(self.flag[indexPath.row])")
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        res.text=self.countrylist[indexPath.row]
    }
}

