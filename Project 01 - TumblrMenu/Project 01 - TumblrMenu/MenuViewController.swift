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
    
    @IBOutlet weak var alfaRomeoButton: UIButton!
    @IBOutlet weak var alfaRomeoLabel: UILabel!
    
    @IBOutlet weak var BMWButton: UIButton!
    @IBOutlet weak var BMWLabel: UILabel!
    
    @IBOutlet weak var bugattiButton: UIButton!
    @IBOutlet weak var bugattiLabel: UILabel!
    
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