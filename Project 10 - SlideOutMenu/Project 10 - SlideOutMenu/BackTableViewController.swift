//
//  BackTableViewController.swift
//  Project 10 - SlideOutMenu
//
//  Created by 陈炯 on 16/9/21.
//  Copyright © 2016年 Jiong. All rights reserved.
//

import UIKit

class BackTableViewController: UITableViewController {

    var TableArrary = [String]()
    
    override func viewDidLoad() {
        
        TableArrary = ["First", "Second", "Thrid"]
        self.tableView.tableFooterView = UIView(frame: CGRectZero)
        self.tableView.separatorColor = UIColor(red:0.159, green:0.156, blue:0.181, alpha:1)
        self.view.backgroundColor = UIColor.blackColor()
        UIApplication.sharedApplication().statusBarHidden = true
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TableArrary.count
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(TableArrary[indexPath.row], forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = TableArrary[indexPath.row]
        cell.backgroundColor = UIColor.clearColor()
        cell.textLabel?.textColor = UIColor.whiteColor()
        
        
        return cell
        
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let selectedCell:UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
        
        selectedCell.contentView.backgroundColor = UIColor(red:0.245, green:0.247, blue:0.272, alpha:0.817)
        
    }

}
