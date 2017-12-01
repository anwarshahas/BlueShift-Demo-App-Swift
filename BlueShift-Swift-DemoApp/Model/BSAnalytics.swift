//
//  BSAnalytics.swift
//  BlueShift-Swift-DemoApp
//
//  Created by shahas kp on 01/12/17.
//  Copyright © 2017 shahas kp. All rights reserved.
//

import UIKit
import BlueShift_iOS_SDK

class BSAnalytics: NSObject {
    
    private static let _screenViewEvent = "mobile_screen"
    private static let _screenNameParam = "screen_name"
    private static let _batchEvents = false

    public static func trackScreenView(screenName: String) {
        let parameters = [
            _screenNameParam : screenName
        ]
        BlueShift.sharedInstance().trackEvent(forEventName: _screenViewEvent,
                                              andParameters: parameters,
                                              canBatchThisEvent: _batchEvents)
    }
    
}
