//
//  MenuViewController.swift
//  Project 01 - TumblrMenu
//
//  Created by 陈炯 on 16/5/31.
//  Copyright © 2016年 Jiong. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    let transitionManager = MenuTransitionManager()
    
    @IBOutlet weak var volkswagenButton: UIButton!
    @IBOutlet weak var volkswagenLabel: UILabel!
    
    @IBOutlet weak var lamborghiniButton: UIButton!
    @IBOutlet weak var lamborghiniLabel: UILabel!
    
    @IBOutlet weak var benzButton: UIButton!
    @IBOutlet weak var benzLabel: UILabel!
    
    @IBOutlet weak var bentleyButton: UIButton!
    @IBOutlet weak var bentleyLabel: UILabel!
    
    @IBOutlet weak var ferrariButton: UIButton!
    @IBOutlet weak var ferrariLabel: UILabel!
    
    @IBOutlet weak var bugattiButton: UIButton!
    @IBOutlet weak var bugattiLabel: UILabel!
    
    //MARK: 回到主页面
    @IBAction func menuButtonDidTouch(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.transitioningDelegate = self.transitionManager
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}