//
//  AppDelegate.swift
//  castletest
//
//  Created by Dmitriy Nikolin on 23/05/2020.
//  Copyright © 2020 dnikolin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: - Properties
    var window: UIWindow?
    private let appCoordinator = AppCoordinator()

    // MARK: - AppLifeCicle
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Configure Window
        window = UIWindow(frame: UIScreen.main.bounds)
        
        window?.rootViewController = appCoordinator.rootViewController
        
        window?.makeKeyAndVisible()
        
        // Config Coordinator
        appCoordinator.start()
        
        
        return true
    }

  

}

