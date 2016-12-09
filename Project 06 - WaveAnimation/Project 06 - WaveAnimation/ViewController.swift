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

    @IBAction func waveButtonDidTapped(_ sender: AnyObject) {
        
        UIView.animate(withDuration: 3.0, delay: 0.0, options: .repeat, animations: {
            
            self.circle3.transform = CGAffineTransform(scaleX: 8.0, y: 8.0)
            self.circle3.alpha = 0.0
            
            }, completion: { _ in
                
                self.circle3.transform = CGAffineTransform.identity
                self.circle3.alpha = 1.0
        })
        
        UIView.animate(withDuration: 3.0, delay: 0.3, options: .repeat, animations: {
            
            self.circle2.transform = CGAffineTransform(scaleX: 8.0, y: 8.0)
            self.circle2.alpha = 0.0
            
            }, completion: { _ in
                
                self.circle2.transform = CGAffineTransform.identity
                self.circle2.alpha = 1.0
        })
        
        UIView.animate(withDuration: 3.0, delay: 0.6, options: .repeat, animations: {
            
            self.circle1.transform = CGAffineTransform(scaleX: 8.0, y: 8.0)
            self.circle1.alpha = 0.0
            
            }, completion: { _ in
                
                self.circle1.transform = CGAffineTransform.identity
                self.circle1.alpha = 1.0
        })

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

