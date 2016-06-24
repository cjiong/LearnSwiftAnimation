//
//  ViewController.swift
//  Project 06 - WaveAnimation
//
//  Created by 陈炯 on 16/6/23.
//  Copyright © 2016年 Jiong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var circle1: UIView!
    @IBOutlet weak var circle2: UIView!
    @IBOutlet weak var circle3: UIView!
    @IBOutlet weak var waveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        circle1.layer.cornerRadius = 50
        circle2.layer.cornerRadius = 50
        circle3.layer.cornerRadius = 50
        circle1.clipsToBounds = true
        circle2.clipsToBounds = true
        circle3.clipsToBounds = true
    }

    @IBAction func waveButtonDidTapped(sender: AnyObject) {
        
        UIView.animateWithDuration(3.0, delay: 0.0, options: [.CurveEaseInOut, .Repeat], animations: {
            
            self.circle3.transform = CGAffineTransformMakeScale(8.0, 8.0)
            self.circle3.alpha = 0.0
            
            }, completion: { _ in
                
                self.circle3.transform = CGAffineTransformIdentity
                self.circle3.alpha = 1.0
        })
        
        UIView.animateWithDuration(3.0, delay: 0.3, options: [.CurveEaseInOut, .Repeat], animations: {
            
            self.circle2.transform = CGAffineTransformMakeScale(8.0, 8.0)
            self.circle2.alpha = 0.0
            
            }, completion: { _ in
                
                self.circle2.transform = CGAffineTransformIdentity
                self.circle2.alpha = 1.0
        })
        
        UIView.animateWithDuration(3.0, delay: 0.6, options: [.CurveEaseInOut, .Repeat], animations: {
            
            self.circle1.transform = CGAffineTransformMakeScale(8.0, 8.0)
            self.circle1.alpha = 0.0
            
            }, completion: { _ in
                
                self.circle1.transform = CGAffineTransformIdentity
                self.circle1.alpha = 1.0
        })

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

