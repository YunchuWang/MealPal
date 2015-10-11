//
//  ComposeRequestViewController.swift
//  MealPal
//
//  Created by yunchu on 10/10/15.
//  Copyright © 2015 AmerPe Studio. All rights reserved.
//

import Foundation
import UIKit
import Parse

class ComposeRequestViewController: UIViewController,UITextFieldDelegate,UITextViewDelegate {
    
    @IBOutlet weak var allergtextfield: UITextField!
    @IBOutlet weak var time: UITextField!
    @IBOutlet weak var location: UITextField!
    @IBOutlet weak var requestcontent: UITextView!
    
    override func viewDidLoad() {
       super.viewDidLoad()
        self.allergtextfield.delegate = self
        self.time.delegate = self
        self.location.delegate = self
        self.requestcontent.delegate = self
        
    }
    
    @IBAction func Done(sender: UIBarButtonItem) {
        
//        var dr = self.storyboard?.instantiateViewControllerWithIdentifier("requestlist") as! RequestListViewController
//        self.presentViewController(dr, animated: true, completion: nil)
        var request = PFObject(className:"Requests")
        request["time"] = time.text
        request["location"] = location.text
        request["username"] = PFUser.currentUser()?.username
        request["emailaddress"] = PFUser.currentUser()?.email
        request["allergies"] = allergtextfield.text
        request["requestcontent"] = requestcontent.text

        
        request.saveInBackgroundWithBlock {
            (success: Bool, error: NSError?) -> Void in
            if (success) {
                // The object has been saved.
                            } else {
                // There was a problem, check error.description
            }
        }
        self.performSegueWithIdentifier("backtohome", sender: self)

        
    }
}