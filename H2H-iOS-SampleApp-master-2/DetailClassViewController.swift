//
//  DetailClassViewController.swift
//  H2HSDKIntegrationSample
//
//  Created by Sanjay Shrestha on 1/28/17.
//  Copyright © 2017 Spring Computing Technologies. All rights reserved.
//

import UIKit

class DetailClassViewController: UIViewController {
    @IBOutlet weak var classTitle: UILabel!
    @IBOutlet weak var authorTitle: UILabel!
    @IBOutlet weak var descriptionTitle: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var course:ClassInfo?

    override func viewDidLoad() {
        super.viewDidLoad()

        
        let backButton = UIBarButtonItem(title: "Add Quiz", style: UIBarButtonItemStyle.Plain, target: self, action: "addQuiz")
        navigationItem.rightBarButtonItem = backButton
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        self.course = appDelegate.course
        fillDetail()
    }
    
    
  
    func addQuiz() {
        
        //go to new VC
        //Update Poles
        // Do something
    }
    func fillDetail(){
        classTitle.text = course?.name
        authorTitle.text = course?.profName
        descriptionTitle.text = course?.classDescription
        time.text = course?.StartTime
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func joinClassClicked(sender: AnyObject) {
        
        //check password
        //Go to meeting here
        
    }

  

}
