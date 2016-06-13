//
//  ViewController.swift
//  Project 04 - NavigationBarAnimation
//
//  Created by 陈炯 on 16/6/10.
//  Copyright © 2016年 Jiong. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var data = [ scenery(name: "", image: "4-1"),
                 scenery(name: "", image: "4-2"),
                 scenery(name: "", image: "4-3"),
                 scenery(name: "", image: "4-4"),
                 scenery(name: "", image: "4-5"),
                 scenery(name: "", image: "4-6")
    
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: key
        navigationController?.hidesBarsOnSwipe = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    //MARK: UITableViewDataSource
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return data.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! SceneryCell
        
        cell.sceneryNameLabel.text = data[indexPath.row].name
        cell.sceneryImageView.image = UIImage(named: data[indexPath.row].image)
        
        return cell
    }
    
    
}

