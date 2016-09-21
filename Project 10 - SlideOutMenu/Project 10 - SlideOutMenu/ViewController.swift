//
//  ViewController.swift
//  Project 10 - SlideOutMenu
//
//  Created by 陈炯 on 16/7/15.
//  Copyright © 2016年 Jiong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var openButton: UIBarButtonItem!
    @IBOutlet weak var aLabel: UILabel!
    
    
    var varView = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        openButton.target = self.revealViewController()
        openButton.action = Selector("revealToggle")
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        if (varView == 0) {
            aLabel.text = "😂"
        } else {
            aLabel.text = "👻"
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

