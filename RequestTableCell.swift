//
//  RequestTableCell.swift
//  MealPal
//
//  Created by yunchu on 10/10/15.
//  Copyright © 2015 AmerPe Studio. All rights reserved.
//


import UIKit

class RequestTableCell: UITableViewCell {
    

    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var timecontent: UITextField!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var locationcontent: UITextField!
    
    @IBOutlet weak var acceptButton: UIButton!
    var emailaddress: String = String()
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

