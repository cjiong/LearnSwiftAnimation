//
//  MenuTransitionManager.swift
//  Project 01 - TumblrMenu
//
//  Created by 陈炯 on 16/6/1.
//  Copyright © 2016年 Jiong. All rights reserved.
//

import UIKit

class MenuTransitionManager: NSObject, UIViewControllerAnimatedTransitioning, UIViewControllerTransitioningDelegate {
    
    fileprivate var presenting = false
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        let container = transitionContext.containerView
        
        let screens : (from:UIViewController, to:UIViewController) = (transitionContext.viewController(forKey: UITransitionContextViewControllerKey.from)!, transitionContext.viewController(forKey: UITransitionContextViewControllerKey.to)!)
        
        let menuViewController = !self.presenting ? screens.from as! MenuViewController : screens.to as! MenuViewController
        let bottomViewController = !self.presenting ? screens.to as UIViewController : screens.from as UIViewController
        
        let menuView = menuViewController.view
        let bottomView = bottomViewController.view
        
        if (self.presenting) {
            
            self.offStageMenuController(menuViewController)
            
        }
        
        container.addSubview(bottomView!)
        container.addSubview(menuView!)
        
        let duration = self.transitionDuration(using: transitionContext)
        
        UIView.animate(withDuration: duration, delay: 0.0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.8, options: [], animations: {
            
            if (self.presenting){
                
                self.onStageMenuViewController(menuViewController)
                
            } else {
                
                self.offStageMenuController(menuViewController)
                
            }
            
            }, completion: { finished in
                
                transitionContext.completeTransition(true)
                UIApplication.shared.keyWindow!.addSubview(screens.to.view)
                
        })
        
    }
    
    func offstage(_ amount: CGFloat) -> CGAffineTransform {
        return CGAffineTransform(translationX: amount, y: 0)
    }
    
    func offStageMenuController(_ menuViewController: MenuViewController) {
        
        menuViewController.view.alpha = 0
        
        let topRowOffset: CGFloat = 300
        let middleRowOffset: CGFloat = 150
        let bottomRowOffset: CGFloat = 50
        
        menuViewController.volkswagenButton.transform = self.offstage(-topRowOffset)
        menuViewController.volkswagenLabel.transform = self.offstage(-topRowOffset)
        
        menuViewController.benzButton.transform = self.offstage(-middleRowOffset)
        menuViewController.benzLabel.transform = self.offstage(-middleRowOffset)
        
        menuViewController.ferrariButton.transform = self.offstage(-bottomRowOffset)
        menuViewController.ferrariButton.transform = self.offstage(-bottomRowOffset)
        
        menuViewController.lamborghiniButton.transform = self.offstage(topRowOffset)
        menuViewController.lamborghiniLabel.transform = self.offstage(topRowOffset)
        
        menuViewController.bentleyButton.transform = self.offstage(middleRowOffset)
        menuViewController.bentleyLabel.transform = self.offstage(middleRowOffset)
        
        menuViewController.bugattiButton.transform = self.offstage(bottomRowOffset)
        menuViewController.bugattiLabel.transform = self.offstage(bottomRowOffset)
    }
    
    func onStageMenuViewController(_ menuViewController: MenuViewController) {
        
        menuViewController.view.alpha = 1
        
        menuViewController.volkswagenButton.transform = CGAffineTransform.identity
        menuViewController.volkswagenLabel.transform = CGAffineTransform.identity
        
        menuViewController.benzButton.transform = CGAffineTransform.identity
        menuViewController.benzLabel.transform = CGAffineTransform.identity
        
        menuViewController.ferrariButton.transform = CGAffineTransform.identity
        menuViewController.ferrariLabel.transform = CGAffineTransform.identity
        
        menuViewController.lamborghiniButton.transform = CGAffineTransform.identity
        menuViewController.lamborghiniLabel.transform = CGAffineTransform.identity
        
        menuViewController.bentleyButton.transform = CGAffineTransform.identity
        menuViewController.bentleyLabel.transform = CGAffineTransform.identity
        
        menuViewController.bugattiButton.transform = CGAffineTransform.identity
        menuViewController.bugattiLabel.transform = CGAffineTransform.identity
    }
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.5
    }
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        self.presenting = true
        return self
        
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
       
        self.presenting = false
        return self
        
    }
}
