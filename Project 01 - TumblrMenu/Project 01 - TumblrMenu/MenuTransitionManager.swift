//
//  MenuTransitionManager.swift
//  Project 01 - TumblrMenu
//
//  Created by 陈炯 on 16/6/1.
//  Copyright © 2016年 Jiong. All rights reserved.
//

import UIKit

class MenuTransitionManager: NSObject, UIViewControllerAnimatedTransitioning, UIViewControllerTransitioningDelegate {
    
    private var presenting = false
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        
        let container = transitionContext.containerView()
        
        let screens : (from:UIViewController, to:UIViewController) = (transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey)!, transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)!)
        
        let menuViewController = !self.presenting ? screens.from as! MenuViewController : screens.to as! MenuViewController
        let bottomViewController = !self.presenting ? screens.to as UIViewController : screens.from as UIViewController
        
        let menuView = menuViewController.view
        let bottomView = bottomViewController.view
        
        if (self.presenting) {
            
            self.offStageMenuController(menuViewController)
            
        }
        
        container!.addSubview(bottomView)
        container!.addSubview(menuView)
        
        let duration = self.transitionDuration(transitionContext)
        
        UIView.animateWithDuration(duration, delay: 0.0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.8, options: [], animations: {
            
            if (self.presenting){
                
                self.onStageMenuViewController(menuViewController)
                
            } else {
                
                self.offStageMenuController(menuViewController)
                
            }
            
            }, completion: { finished in
                
                transitionContext.completeTransition(true)
                UIApplication.sharedApplication().keyWindow!.addSubview(screens.to.view)
                
        })
        
    }
    
    func offstage(amount: CGFloat) -> CGAffineTransform {
        return CGAffineTransformMakeTranslation(amount, 0)
    }
    
    func offStageMenuController(menuViewController: MenuViewController) {
        
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
    
    func onStageMenuViewController(menuViewController: MenuViewController) {
        
        menuViewController.view.alpha = 1
        
        menuViewController.volkswagenButton.transform = CGAffineTransformIdentity
        menuViewController.volkswagenLabel.transform = CGAffineTransformIdentity
        
        menuViewController.benzButton.transform = CGAffineTransformIdentity
        menuViewController.benzLabel.transform = CGAffineTransformIdentity
        
        menuViewController.ferrariButton.transform = CGAffineTransformIdentity
        menuViewController.ferrariLabel.transform = CGAffineTransformIdentity
        
        menuViewController.lamborghiniButton.transform = CGAffineTransformIdentity
        menuViewController.lamborghiniLabel.transform = CGAffineTransformIdentity
        
        menuViewController.bentleyButton.transform = CGAffineTransformIdentity
        menuViewController.bentleyLabel.transform = CGAffineTransformIdentity
        
        menuViewController.bugattiButton.transform = CGAffineTransformIdentity
        menuViewController.bugattiLabel.transform = CGAffineTransformIdentity
    }
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval {
        return 0.5
    }
    
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        self.presenting = true
        return self
        
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
       
        self.presenting = false
        return self
        
    }
}
