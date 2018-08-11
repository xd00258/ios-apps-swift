//
//  ViewController.swift
//  Table Views
//
//  Created by Victor Vuong on 2017-04-30.
//  Copyright © 2017 Victor Vuong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let cellContent = ["ayy","lmao","lol","bye"]
  
    //setting number of Rows
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return cellContent.count
    }
    
    //defining cell
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = cellContent[indexPath.row]
        
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

