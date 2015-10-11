//
//  EmailViewController.swift
//  MealPal
//
//  Created by yunchu on 10/11/15.
//  Copyright © 2015 AmerPe Studio. All rights reserved.
//

import Foundation
import Parse
import UIKit

class EmailViewController: UIViewController {
    
    @IBOutlet weak var email: UILabel!
    
    @IBOutlet weak var close: UIButton!
    
    @IBAction func closee(sender: UIButton) {
        self.performSegueWithIdentifier("backtohome2", sender: self)
    }
}
