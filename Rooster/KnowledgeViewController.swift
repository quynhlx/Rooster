//
//  KnowledgeViewController.swift
//  Rooster
//
//  Created by KIAN on 11/10/15.
//  Copyright (c) 2015 kian. All rights reserved.
//

import UIKit

class KnowledgeViewController: UIViewController {

    @IBOutlet weak var Menu: KnowledgeMenuView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Menu.buttonLearnmath.setBackgroundImage(UIImage(named: "hoctoan_02.png"), forState: UIControlState.Normal)
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
import UIKit

/// Present the next screen without an animation.
class ModalNoAnimationSegue: UIStoryboardSegue {
    
    override func perform() {
        self.sourceViewController.presentViewController(
            self.destinationViewController as! UIViewController,
            animated: false,
            completion: nil)
    }
    
}
