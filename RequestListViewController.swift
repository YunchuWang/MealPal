//
//  RequestListViewController.swift
//  MealPal
//
//  Created by yunchu on 10/10/15.
//  Copyright © 2015 AmerPe Studio. All rights reserved.
//

import Foundation
import UIKit
import Parse

class RequestListViewController : UIViewController,UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var tableView: UITableView!

    var requestdata:NSMutableArray! = NSMutableArray()
 
    override func viewWillAppear(animated: Bool) {
        
        // refresh table view
        self.loadData()
        super.viewWillAppear(animated)
        self.tableView.reloadData()
//        ScrollView.contentOffset = CGPoint(x: 320, y: 1000)
//        ScrollView.addSubview(tableView)
//        view.addSubview(ScrollView)
    }
    
    @IBAction func acceptRequest( sender: UIButton) {
         var ep = self.storyboard?.instantiateViewControllerWithIdentifier("emailFriend") as! EmailViewController
//         let request:PFObject = requestdata.objectAtIndex(sender.tag) as! PFObject
//         ep.email.text = request["emailaddress"] as? String
         self.presentViewController(ep, animated: true, completion: nil)
        
    }
    @IBAction func ComposeRequest(sender: UIBarButtonItem) {
        let cr = self.storyboard?.instantiateViewControllerWithIdentifier("composerequest") as! ComposeRequestViewController
        self.presentViewController(cr, animated: true, completion: nil)
    }
    
    @IBAction func loadData(){
        requestdata.removeAllObjects()
        
        let findRequestData:PFQuery = PFQuery(className: "Requests")
        
        findRequestData.findObjectsInBackgroundWithBlock{
            (objects:[PFObject]?, error:NSError?)->Void in
            
            if error == nil{
                for object in objects!{
                    let request:PFObject = object
                    self.requestdata.addObject(request)
                }
                
                let array:NSArray = self.requestdata.reverseObjectEnumerator().allObjects
                self.requestdata = NSMutableArray(array: array)
                
                self.tableView.reloadData()
                
            }
            
        }
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return requestdata.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("requestTableCell", forIndexPath: indexPath) as! RequestTableCell
        let request:PFObject = requestdata.objectAtIndex(indexPath.row) as! PFObject
        var query = PFQuery(className:"Requests")
        query.getObjectInBackgroundWithId(request.objectId!) {
            (request: PFObject?, error: NSError?) -> Void in
            if error == nil && request != nil {
            } else {
                print(error)
            }
        }
        let time2 = request["time"] as! String
        let location2 = request["location"]as! String
        cell.timecontent.text = time2
        cell.locationcontent.text = location2
//        cell.acceptButton.tag = indexPath.row
//        cell.acceptButton.addTarget(self,action: "acceptRequest", forControlEvents: .TouchUpInside)
//        else {
//            cell.emailaddress = request["emailaddress"] as? String
//            cell.acceptButton.email = request["emailaddress"] as? String
//        }
        
        return cell
    }
    

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        // set detail view for memes
        let detailController = self.storyboard!.instantiateViewControllerWithIdentifier("requestdetailview") as! RequestDetailViewController
        detailController.requestdetail = requestdata[indexPath.row] as! PFObject
        self.presentViewController(detailController, animated: true,completion:nil)
    }

    
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        
//    }
    
}
