//
//  ViewController.swift
//  PubNubSiv
//
//  Created by vijay vir on 2/2/18.
//  Copyright © 2018 vijay vir. All rights reserved.
//
import UIKit
class ViewController: UIViewController {
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.

		let appDelegatee = UIApplication.shared.delegate as! AppDelegate
		appDelegatee.closureAppDelegatePubNub = { message in
			print("🌸🌸🌸🌸🌸")
			print(message)
		}
	}
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBOutlet weak var actionPublish: UIButton!
	@IBAction func actionsubscribe(_ sender: UIButton) {
				let appDelegate = UIApplication.shared.delegate as! AppDelegate
            appDelegate.pubNubSubscribeSecond(to: "Channel-px4kw5x7k")
	}
	@IBAction func actionPublish2(_ sender: UIButton) {
		let appDelegate = UIApplication.shared.delegate as! AppDelegate
		appDelegate.pubNubPublishChannelFirst(to: "Channel-px4kw5x7k", message: "🐝\(Date())")
	}

}

