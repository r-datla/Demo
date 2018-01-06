//
//  AppDelegate.swift
//  framesbounds
//
//  Created by Rijutha Datla on 11/13/17.
//  Copyright © 2017 Rijutha. All rights reserved.
//

import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow.init(frame: UIScreen.main.bounds)
        window?.backgroundColor = UIColor.white
        
        let vc = UIViewController()
       let view1 = UIView.init(frame: CGRect.init(x: 10, y: 20, width: vc.view.frame.size.width - 40, height: 250))
        view1.backgroundColor = UIColor.blue
        //vc.view.addSubview(view1)
        //let view = UIView()
        let label = UILabel.init(frame: CGRect.init(x: 50, y: 50, width: vc.view.frame.size.width - 300, height: 30))
        label.text = "Hello World"
        
       /* let button = UIButton.init(frame: CGRect.init(x: 50, y: 100, width: vc.view.frame.size.width - 150, height: 30))
        button.titleLabel?.text = "Rotate"
        button.backgroundColor = UIColor.red */
        //view1.addSubview(button)
        
        
        
        view1.transform = CGAffineTransform.init(rotationAngle: CGFloat.pi/4)
       
        let viewframex = view1.frame.minX
        print("View Frame x: \(viewframex)")
        let viewframey = view1.frame.minY
        print("View Frame y : \(viewframey)")
        
        let viewframeh = view1.frame.height
        print("View Frame Height: \(viewframeh)")
        let viewframew = view1.frame.width
        print("View Frame Width: \(viewframew)")
        
        //view1.transform = CGAffineTransform.init(rotationAngle: CGFloat.pi/2)
        //label.transform = CGAffineTransform.init(rotationAngle: CGFloat.pi/2)
        //let view1 = UIView.init(frame: CGRect.init(x: 10, y: 20, width: vc.view.frame.size.width - 40, height: 250))

       let viewboundx = view1.bounds.minX
        print("View Bound x: \(viewboundx)")
        let viewboundy = view1.bounds.minY
        print("View Bound y: \(viewboundy)")
        
        let viewboundh = view1.bounds.height
        print("View Bound Height: \(viewboundh)")
        let viewboundw = view1.bounds.width
        print("View Bound Width: \(viewboundw)")
        vc.view.addSubview(view1)
        view1.addSubview(label)
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        
        
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

