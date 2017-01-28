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
        
        // Create a navigation item with a title
        let navigationItem = UINavigationItem()
        
        // Create left and right button for navigation item
        let rightButton = UIBarButtonItem(title: "Right", style: UIBarButtonItemStyle.Plain, target: self, action: "createClass:")
        
        // Create two buttons for the navigation item
        navigationItem.rightBarButtonItem = rightButton
        
        // Assign the navigation item to the navigation bar
        navigationBar.items = [navigationItem]
        
        // Make the navigation bar a subview of the current view controller
        self.view.addSubview(navigationBar)
        
        
              // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func createClass(sender: UIBarButtonItem) {
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
    
    

}
