//
//  Popup.swift
//  Pods
//
//  Created by Jacob R. Abraham on 4/3/17.
//
//

import UIKit

//popup
class Popup: UIViewController, UIViewControllerTransitioningDelegate {
    
    //size fo popup
    private var size: CGSize?
    //array of all buttons
    private var buttons: [PopupButton]?
    
    //the customized view, note: this is not the actual view, it is just a convient way to define attributes for the actual view
    private var viewAttributes: UIView?
    
    //the customized title label
    private var titleLabel: UILabel?
    
    //the customized message text view
    private var messageView: UITextView?
    
    //setups up warning with text and butto actions
    func setup(size: CGSize, view: UIView?, titleLabel: UILabel, messageView: UITextView?, buttons: [PopupButton]?)
    {
        self.size = size
        self.viewAttributes = view
        self.titleLabel = titleLabel
        self.messageView = messageView
        
        //create ok button
        let okButton = PopupButton
        self.buttons = buttons ??
    }
    //setup view how it will appear to users
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    //change the size of the popup to the desired size
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.view.frame.size = size!
    }
    //action for all buttons
    private func buttonAction(_ sender: PopupButton) {
        
        //dismiss view conroller
        presentingViewController!.dismiss(animated: true, completion: {
            //get action from popupbutton and call it
            guard let action = sender.action else {return}
            //call function
            action()
        })
    }
}

