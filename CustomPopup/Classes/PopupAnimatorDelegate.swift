//
//  PopupAnimatorDelegate.swift
//  Pods
//
//  Created by Jacob R. Abraham on 4/3/17.
//
//

import UIKit

//create custom animations for popups
class PopupAnimatorDelegate: NSObject, UIViewControllerTransitioningDelegate {
    
    //get controller for presentaion
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        //get controller
        let controller = PopupAnimator()
        //set presenting to true
        controller.presenting = true
        return controller
    }
    //get cnyroller for dismissal
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        print("DISMISS")
        //get controller
        let controller = PopupAnimator()
        //set presenting to true
        controller.presenting = false
        return controller
    }
}

