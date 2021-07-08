//
//  AppDelegate.swift
//  JustProject
//
//  Created by Arthur Narimanov on 7/5/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		
		let vc = CircleViewController()
		let frame = UIScreen.main.bounds
		
		window = UIWindow(frame: frame)
		window?.makeKeyAndVisible()
		window?.rootViewController = vc
		
		return true
	}

}

