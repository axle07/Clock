//
//  SWViewController.swift
//  Clock3
//
//  Created by Alex Johnson on 6/7/16.
//  Copyright © 2016 Sector9. All rights reserved.
//

import UIKit

class SWViewController: UIViewController {

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //@IBOutlet var displayTimeLabel: UILabel!
    
    @IBOutlet weak var currentTimeLabel: UILabel!
    
    var timer = NSTimer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        self.timer = NSTimer.scheduledTimerWithTimeInterval(1.0,
            target: self,
            selector: Selector("tick"),
            userInfo: nil,
            repeats: true)
    }
    
    @objc func tick() {
        currentTimeLabel.text = NSDateFormatter.localizedStringFromDate(NSDate(),
                                                                        dateStyle: .MediumStyle,
                                                                        timeStyle: .MediumStyle)
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
