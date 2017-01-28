//
//  ViewClassesViewController.swift
//  H2HSDKIntegrationSample
//
//  Created by sanjay on 1/27/17.
//  Copyright © 2017 Spring Computing Technologies. All rights reserved.
//

import UIKit

class ViewClassesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var classes = ["xya", "abc"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // navigation title & color
        self.navigationItem.title = "Available Classes"
        self.navigationController?.navigationBar.tintColor
            = UIColor(red: 255/255.0, green: 107/255.0, blue: 100/255.0, alpha: 1.0)
        // Create the navigation bar
        let navigationBar = UINavigationBar(frame: CGRectMake(0, 0, self.view.frame.size.width, 44)) // Offset by 20 pixels vertically to take the status bar into account
        
        navigationBar.backgroundColor = UIColor.whiteColor()
        //navigationBar.delegate = self
        
        let backButton = UIBarButtonItem(title: "Add", style: UIBarButtonItemStyle.Plain, target: self, action: "createClass")
        navigationItem.rightBarButtonItem = backButton
        
    }
    
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func createClass() {
        // Do something
    }
    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return classes.count
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //segue to specific meeting or description
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: ClassesTableViewCell = tableView.dequeueReusableCellWithIdentifier("ViewClassesCell") as! ClassesTableViewCell

        let course = classes[indexPath.row]
        
        cell.Author.text = " "
        cell.classDescription.text = " "
        cell.classTitle.text = "CS 101"
        cell.classSchedule.text = " 232"
        //add image cell.portrait =
        
      
        
        return cell

    }
    
    
    // boilerplate method to for web service call
    private func requestWithURL(urlString:String, params:Dictionary<String, AnyObject>, action: String, completionHandler:(AnyObject?, NSURLResponse?, NSError?)->Void)
    {
        // request URL set
        let request : NSMutableURLRequest = NSMutableURLRequest (URL: NSURL(string: urlString)!)
        // request type set
        request.HTTPMethod = "POST"
        
        var jsonData:NSData? = nil
        do
        {
            // convert params to NSData
            jsonData = try NSJSONSerialization.dataWithJSONObject(params, options: [])
        }
        catch let error as NSError {
            GUIUtility.sharedInstance.dismissLoadingAndDisplayAlertWith( "Error: JSON Parsing",
                                                                         message: error.localizedDescription)
            print("json error: \(error.localizedDescription)")
            return
        }
        
        // convert json in NSData to String
        let jsonString = String.init(data: jsonData!, encoding: NSUTF8StringEncoding)
        
        var body: String = ""
        if action == "createMeeting"
        {
            body = "action=createMeeting&json=" + jsonString!
            
            // if action is of type: createMeeting
            // set apiToken in the header
            // this api token is recieved from the login web service
            request.setValue(Core.sharedInstance.userInfo?.apiToken, forHTTPHeaderField: "apiToken")
        }
        else if action == "getWebRTCServerList"
        {
            body = "json=" + jsonString!
        }
        
        // set request body
        let bodyEncoded : NSString = body.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLHostAllowedCharacterSet())!
        let httpBody : NSData? = bodyEncoded.dataUsingEncoding(NSUTF8StringEncoding)
        request.HTTPBody = httpBody
        
        // set common other request headers
        request.setValue("application/x-www-form-urlencoded; charset=utf-8", forHTTPHeaderField: "Content-Type")
        request.setValue(NSString(format:"%llu", httpBody!.length) as String, forHTTPHeaderField: "Content-Length")
        
        //let postDataTask = NSURLSession.sharedSession().dataTaskWithRequest(request, completionHandler: { (data, response, error) in
        let postDataTask = ((UIApplication.sharedApplication().delegate) as! AppDelegate!).getURLSession().dataTaskWithRequest(request, completionHandler: { (data, response, error) in
            do
            {
                if let dataUnrapped = data
                {
                    let jsonObject = try NSJSONSerialization.JSONObjectWithData(dataUnrapped, options: [])
                    
                    let array = jsonObject as? NSMutableArray
                    if array == nil
                    {
                        // in case of create meeting the object is of type dictionary
                        let dictionary = jsonObject as? NSMutableDictionary
                        completionHandler(dictionary, response, error)
                    }
                    else
                    {
                        // in case of server list, object is of type array
                        completionHandler(array, response, error)
                    }
                }
                else
                {
                    print("Error: No data recieved")
                    GUIUtility.sharedInstance.dismissLoadingAndDisplayAlertWith( "Error: Response",
                        message: "No data recieved from server")
                }
            }
            catch let error as NSError {
                print("json error: \(error.localizedDescription)")
                GUIUtility.sharedInstance.dismissLoadingAndDisplayAlertWith( "Error: JSON Parsing",
                    message: error.localizedDescription)
            }
        })
        
        postDataTask.resume()
    }
    

}
