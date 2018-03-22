//
//  AppDelegate.swift
//  PubNubSiv
//
//  Created by vijay vir on 2/2/18.
//  Copyright © 2018 vijay vir. All rights reserved.
//
import UIKit
import PubNub
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
	var client : PubNub
	var closureAppDelegatePubNub :((Any?) -> Void )?
	override init() {
	let	config = PNConfiguration(publishKey: "pub-c-3909e085-0e30-4bbe-8e04-ebebb8a4bb9d",
	   	                         subscribeKey: "sub-c-f7a0d7e4-0674-11e8-ba83-a6903fe3b7a1")
		config.uuid = "Client-yemi2"
		client = PubNub.clientWithConfiguration(config)

    //config.stripMobilePayload = false
		super.init()
		client.addListener(self)
		//
		//client.addListener(self)
	}
	var window: UIWindow?
	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		// Override point for customization after application launch.
		return true
	}
	func applicationWillResignActive(_ application: UIApplication) {
		// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
	}
	func applicationDidEnterBackground(_ application: UIApplication) {
		// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
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
