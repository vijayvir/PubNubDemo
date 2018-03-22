//  PubNubAppDelegate.swift
//  PubNubSiv
//  Created by vijay vir on 2/2/18.
//  Copyright © 2018 vijay vir. All rights reserved.
import Foundation
import PubNub
extension AppDelegate  {
}

extension AppDelegate : PNObjectEventListener {

	func client(_ client: PubNub, didReceiveMessage message: PNMessageResult) {
		print("🤡🤡🤡" , message.data.message )
   closureAppDelegatePubNub?(message.data.message)

	}

	func client(_ client: PubNub, didReceivePresenceEvent event: PNPresenceEventResult) {
		print(#function)
	}

	func client(_ client: PubNub, didReceive status: PNStatus) {
		print(#function , "🤡" , status.operation.rawValue , status.category)
	}
  func pubNubSubscribeSecond( to : String ){
    client.subscribeToChannels([to], withPresence: false)

	}
	func pubNubPublishChannelFirst( to : String  , message : String){
		   // Channel-px4kw5x7k"
				client.publish(message,toChannel: to, compressed: false, withCompletion: nil)
	}

}
