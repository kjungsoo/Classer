//
//  MyClassesTableViewCell.swift
//  H2HSDKIntegrationSample
//
//  Created by Sanjay Shrestha on 1/27/17.
//  Copyright © 2017 Spring Computing Technologies. All rights reserved.
//

import UIKit

class MyClassesTableViewCell: UITableViewCell {

    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var authorName: UILabel!
    @IBOutlet weak var classTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

class PopQuizTableViewCell: UITableViewCell {
    
    @IBOutlet weak var Question: UILabel!
    @IBOutlet weak var option1: UILabel!
    @IBOutlet weak var option2: UILabel!
    @IBOutlet weak var option3: UILabel!
    @IBOutlet weak var option4: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
