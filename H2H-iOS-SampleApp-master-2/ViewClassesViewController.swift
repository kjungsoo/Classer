//
//  ViewClassesViewController.swift
//  H2HSDKIntegrationSample
//
//  Created by sanjay on 1/27/17.
//  Copyright © 2017 Spring Computing Technologies. All rights reserved.
//

import UIKit

class ViewClassesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var ClassesTableView: UITableView!
    
    var classes = []
    override func viewDidLoad() {
        super.viewDidLoad()
        ClassesTableView.delegate = self
        ClassesTableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        <#code#>
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        <#code#>
    }
    

}
