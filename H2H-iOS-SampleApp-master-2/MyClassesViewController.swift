//
//  MyClassesViewController.swift
//  H2HSDKIntegrationSample
//
//  Created by Sanjay Shrestha on 1/27/17.
//  Copyright © 2017 Spring Computing Technologies. All rights reserved.
//

import UIKit

class MyClassesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var myClasstableView: UITableView!
    
    var myClasses = ["xya", "abc"]
    override func viewDidLoad() {
        super.viewDidLoad()
        myClasstableView.delegate = self
        myClasstableView.dataSource = self
        // navigation title & color
        self.navigationItem.title = "Available Classes"
        self.navigationController?.navigationBar.tintColor
            = UIColor(red: 255/255.0, green: 107/255.0, blue: 100/255.0, alpha: 1.0)
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myClasses.count
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //segue to specific meeting or description
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: MyClassesTableViewCell = tableView.dequeueReusableCellWithIdentifier("MyClassCell") as! MyClassesTableViewCell
        
        let course = myClasses[indexPath.row]
        cell.classTitle.text = "xyz"
        cell.authorName.text = "abc "
        cell.time.text = "2 mins"
        
        
        
        
        return cell
        
    }

}
