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
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
