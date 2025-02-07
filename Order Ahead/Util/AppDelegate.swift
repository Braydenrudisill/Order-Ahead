//
//  AppDelegate.swift
//  Order Ahead
//
//  Created by Brayden Rudisill on 8/31/21.
//

import UIKit
import Stripe
import StripeTerminal
import Firebase


class AppDelegate: NSObject, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]?) -> Bool {
        print("AppDelegate didFinishLaunchingWithOptions called")
//        Terminal.setTokenProvider(APIClient.shared)
        FirebaseConfiguration.shared.setLoggerLevel(.min)
        FirebaseApp.configure()
        StripeAPI.defaultPublishableKey = "pk_test_51J3O5IKIZgLeu6ZOEvabdNN72hE32MuErvyzm6QZJbhliUf4rjDPj8HrxXGS7yBeZUqg0AenTBCyOLlnb68j2nWT009ADTXA2b"
        return true
    }
}
