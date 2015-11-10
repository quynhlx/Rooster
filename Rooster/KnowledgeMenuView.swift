//
//  KnowledgeMenuView.swift
//  Rooster
//
//  Created by KIAN on 11/10/15.
//  Copyright (c) 2015 kian. All rights reserved.
//

import UIKit

class KnowledgeMenuView: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    // Our custom view from the XIB file
    var view: UIView!
    let nibName = "KnowledgeMenuView"
    @IBOutlet weak var buttonLearnmath: UIButton!
    @IBInspectable var image: UIImage? {
        get {
            return buttonLearnmath.backgroundImageForState(UIControlState.Normal)
        }
        set(image) {
            buttonLearnmath.setBackgroundImage(image, forState: UIControlState.Normal)
        }
    }
    
    func xibSetup() {
        view = loadViewFromNib()
        
        // use bounds not frame or it'll be offset
        view.frame = bounds
        
        // Make the view stretch with containing view
        view.autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight
        // Adding custom subview on top of our view (over any custom drawing > see note below)
        addSubview(view)
    }
    
    func loadViewFromNib() -> UIView {
        
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        
        return view
    }
    
    override init(frame: CGRect) {
        // 1. setup any properties here
        
        // 2. call super.init(frame:)
        super.init(frame: frame)
        
        // 3. Setup view from .xib file
        xibSetup()
    }
    
    required init(coder aDecoder: NSCoder) {
        // 1. setup any properties here
        
        // 2. call super.init(coder:)
        super.init(coder: aDecoder)
        
        // 3. Setup view from .xib file
        xibSetup()
    }

}
