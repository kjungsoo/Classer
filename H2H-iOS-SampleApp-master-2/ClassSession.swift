//
//  ClassSession.swift
//  H2HSDKIntegrationSample
//
//  Created by Rahul Murthy on 1/27/17.
//  Copyright © 2017 Spring Computing Technologies. All rights reserved.
//

import Foundation
import Firebase
import FirebaseDatabase


class ClassSession{

    var title :String?
    var description: String?
    var prof: String?
    var duration: String?
    var roomID: String?

    init(snapshot: FIRDataSnapshot){
       self.title = snapshot
        
    }
}
