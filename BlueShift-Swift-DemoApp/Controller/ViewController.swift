//
//  ViewController.swift
//  BlueShift-Swift-DemoApp
//
//  Created by shahas kp on 09/06/17.
//  Copyright © 2017 shahas kp. All rights reserved.
//

import UIKit
import BlueShift_iOS_SDK

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //setBlueShiftUserinfo()
        trigerAnalytics()
        BSAnalytics.trackScreenView(screenName: "first_page")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func trigerAnalytics() {
        BlueShift.sharedInstance().trackScreenViewed(for: self, canBatchThisEvent: true)
        BlueShift.sharedInstance().trackEvent(forEventName: "flying-dutchmen", canBatchThisEvent: false)
        BlueShift.sharedInstance().trackEvent(forEventName: "avengers", andParameters: ["captian": true, "thor":true, "hulk": false], canBatchThisEvent: false)
    }
    
    
    
    func setBlueShiftUserinfo() {
        BlueShiftUserInfo.sharedInstance().email = "sha@saz.saz";
        BlueShift.sharedInstance().identifyUser(withEmail: BlueShiftUserInfo.sharedInstance().email, andDetails: nil, canBatchThisEvent: false);
    }
    
    func test() {
        BlueShiftLiveContent.fetch(byEmail: "slotName", success: { (dictionary: [AnyHashable : Any]?) in
            // deal with the response dictionary
        }, failure: { (error: Error?) in
            // handle error here
        })
        
        BlueShiftLiveContent.fetch(byCustomerID: "slotName", success: { (dictionary: [AnyHashable : Any]?) in
            // deal with the response dictionary
        }, failure: { (error: Error?) in
            // handle error here
        })
        
        BlueShiftLiveContent.fetch(byDeviceID: "slotName", success: { (dictionary: [AnyHashable : Any]?) in
            // deal with the response dictionary
        }, failure: { (error: Error?) in
            // handle error here
        })
    }


}

