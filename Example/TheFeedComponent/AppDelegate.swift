//
//  AppDelegate.swift
//  TheFeedComponent
//
//  Created by Alberto Chamorro on 11/16/2016.
//  Copyright (c) 2016 Alberto Chamorro. All rights reserved.
//

import UIKit
import TheFeedComponent
import HudlLog

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var component: TheFeedComponent!
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        component = TheFeedComponent(logger: HudlLogImpl())
        
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        _ = component.open(url: URL(string: "hudl://feed")!) {
            self.window?.rootViewController = $0
        }
        
        return true
    }
}

