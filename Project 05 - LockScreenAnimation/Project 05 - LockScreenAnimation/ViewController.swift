//
//  ViewController.swift
//  Project 05 - LockScreenAnimation
//
//  Created by 陈炯 on 16/6/16.
//  Copyright © 2016年 Jiong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topView: UIImageView!
    @IBOutlet weak var bottomView: UIImageView!
    @IBOutlet weak var lockBorder: UIImageView!
    @IBOutlet weak var lockKeyhole: UIButton!
    
    @IBAction func buttonDidTouch(sender: AnyObject) {
        
        openLock()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        UIApplication.sharedApplication().statusBarHidden = true
    }
    
    func openLock() {
        
        UIView.animateWithDuration(0.5, delay: 0.5, options: [], animations: {
            
            self.lockKeyhole.transform = CGAffineTransformMakeRotation(CGFloat(M_PI))
            }, completion: {_ in
                UIView.animateWithDuration(0.8, delay: 0.2, options: [], animations: {
                    
                    let deltaY = self.lockBorder.frame.maxY
                    
                    self.lockBorder.center.y -= deltaY
                    self.lockKeyhole.center.y -= deltaY
                    self.topView.center.y -= deltaY
                    self.bottomView.center.y += deltaY
                    
                    }, completion:{ _ in
                    
                    self.topView.removeFromSuperview()
                    self.bottomView.removeFromSuperview()
                    self.lockBorder.removeFromSuperview()
                    self.lockKeyhole.removeFromSuperview()
                    })
                
        })
    }
}

