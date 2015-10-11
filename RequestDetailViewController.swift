//
//  RequestDetailViewController.swift
//  MealPal
//
//  Created by yunchu on 10/11/15.
//  Copyright © 2015 AmerPe Studio. All rights reserved.
//

import Foundation
import Parse
import UIKit

class RequestDetailViewController: UIViewController {
    var requestdetail: PFObject!
    @IBOutlet weak var requesttext: UITextView!
    @IBOutlet weak var time3: UITextField!
    @IBOutlet weak var location3: UITextField!
    @IBOutlet weak var allergies3: UITextField!
    
    override func viewWillAppear(animated: Bool) {
        
        //set meme detail view
        super.viewWillAppear(animated)
        requesttext.text = requestdetail["requestcontent"] as! String
        time3.text = requestdetail["time"] as! String
        location3.text = requestdetail["location"] as! String
        allergies3.text = requestdetail["allergies"] as! String
        
        
    }

}