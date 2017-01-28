//
//  ClassInfo.swift
//  H2HSDKIntegrationSample
//
//  Created by Rahul Murthy on 1/28/17.
//  Copyright © 2017 Spring Computing Technologies. All rights reserved.
//

import UIKit

class ClassInfo: NSObject {
    var name:String?
    var meetingID:String?
    var profName:String?
    var StartTime:String?
    var Duration:String?
    var studentList = [Student]()
    
    init(name:String, meetingID:String, profName:String, StartTime:String, Duration:String?, students:[Student]){
        self.name = name
        self.meetingID = meetingID
        self.StartTime = StartTime
        self.Duration = Duration
        self.studentList = students
    }
}

let s1 = Student(name: "Pablo Picasso", email: "test@test.com")
let s2 = Student(name: "Vincent Van Gogh", email: "test@test.com")
let s3 = Student(name: "Claude Monet", email:"test@test.com")
let s4 = Student(name: "Frida Kahlo", email:"test@test.com")
let s5 = Student(name: "Francisco Goya", email:"test@test.com")
let s6 = Student(name: "René Magritte", email:"test@test.com")
let s7 = Student(name: "Hieronymus Bosch", email:"test@test.com")
let s8 = Student(name: "William Turner", email:"test@test.com")
let s9 = Student(name: "John Singer Sargent", email:"test@test.com")
let s10 = Student(name: "Edvard Munch", email:"test@test.com")
let s11 = Student(name: "Andy Warhol", email:"test@test.com")
let s12 = Student(name: "Diego Rivera", email: "test@test.com")
let s13 = Student(name: "El Greco", email:"test@test.com")
let s14 = Student(name: "Paul Klee", email: "test@test.com")
let s15 = Student(name: "Jung Kim", email: "test@test.com")
let s16 = Student(name: "Salvador Dali", email: "test@test.com")


let c1 = ClassInfo(name: "Intro to Computer Science", meetingID: "sdfsdfsfd", profName: "Hamacker", StartTime: "8 AM", Duration: "1 hour", students: [s1,s2,s5,s6,s9,s16])

let c2 = ClassInfo(name: "Calculus 3", meetingID: "asdfasdfasdfasd", profName: "Hamacker", StartTime: "4 PM", Duration: "1.5 hours", students: [s1,s3,s5,s7,s8,s10,s11,s14,s15])

let c3 = ClassInfo(name: "Discrete Math", meetingID: "SDfsfd", profName: "Beck", StartTime: "4 PM", Duration: "2 Hours", students: [s1,s2,s5,s7,s8,s9,s11,s14,s16])

let c4 = ClassInfo(name: "Abstract Algebra", meetingID: "asdfsdf", profName: "Conner", StartTime: "12 pm", Duration: "1 Hour", students: [s1,s2,s5,s3,s8,s9,s11,s14,s15])

let c5 = ClassInfo(name: "Composition", meetingID: "asdf", profName: "Tillis", StartTime: "11 AM", Duration: "1 Hour", students: [s2,s5,s7,s10,s11,s14,s15])


let c6 = ClassInfo(name: "Film Noir", meetingID: "sdf", profName: "Burns", StartTime: "1 PM", Duration: "1.5 Hours", students: [s2,s3,s4,s7,s8,s10,s11,s12,s14,s15])

let ClassArray:[ClassInfo] = [c1,c2,c3,c4,c5,c6]
