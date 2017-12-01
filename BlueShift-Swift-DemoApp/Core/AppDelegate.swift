//
//  AppDelegate.swift
//  BlueShift-Swift-DemoApp
//
//  Created by shahas kp on 09/06/17.
//  Copyright © 2017 shahas kp. All rights reserved.
//

import UIKit
import BlueShift_iOS_SDK


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let config = BlueShiftConfig()
        config.apiKey = "5dfe3c9aee8b375bcc616079b08156d9"
        config.enableLocationAccess = false;
        config.enablePushNotification = false;
        BlueShiftBatchUploadConfig.sharedInstance().batchUploadTimer = 60.0
        BlueShift.initWithConfiguration(config)
        BlueShift.autoIntegration()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        BlueShift.sharedInstance().appDelegate.appDidEnterBackground(application)
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        BlueShift.sharedInstance().appDelegate.appDidBecomeActive(application)
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

extension AppDelegate: BlueShiftPushDelegate {
    func handleCarouselPush(forCategory categoryName: String!, clickedWith index: Int, withDetails details: [AnyHashable : Any]!) {
        
    }
}
