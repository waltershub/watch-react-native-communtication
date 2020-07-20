//
//  InterfaceController.swift
//  watchAppTest Extension
//
//  Created by Waler Shub on 7/20/20.
//

import WatchKit
import Foundation
import WatchConnectivity

class InterfaceController: WKInterfaceController, WCSessionDelegate {

    @IBOutlet weak var firstLabel: WKInterfaceLabel!
    
    var session: WCSession?
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        if WCSession.isSupported(){
            self.session = WCSession.default
            self.session?.delegate = self
            self.session?.activate()
        }
     
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
    }
    
     func session(_ session: WCSession, didReceiveMessage message: [String : Any], replyHandler: @escaping ([String : Any]) -> Void) {
       print("watch received message", message);
       let text = message["message"] as? String
       self.firstLabel.setText(text)
     }
    
    
}
