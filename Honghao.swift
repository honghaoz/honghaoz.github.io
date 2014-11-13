//
//  Honghao.swift
//  Honghao-page
//
//  Created by Honghao Zhang on 2014-11-10.
//  Copyright (c) 2014 HonghaoZ. All rights reserved.
//  http://honghaoz.com

import Honghao

// About Me
let myName = "Honghao Zhang" //😃
var currentLocation = "Toronto, ON, Canada"
let graduate      = "University of Waterloo, Waterloo, Canada" //👍
let undergraduate = "Southeast University, Nanjing, China" //👌

// Currently working as an intern iOS developer at Wattpad (http://wattpad.com) Inc.

// My Resume
var resumeV8: NSURL = NSURL(string: "")!

// My Projects
struct Project {
    var uwInfoSession = (
        "UW Info Session",
        "Objective-C, Python, Google App Engine",
        "iOS application for querying employer info sessions held in UWaterloo.",
        appStore: "http://itunes.apple.com/app/id837207884",
        github: "http://github.com/honghaoz/UW-Info-Session-iOS",
        completed: true
    )
    
    var uwQuest = (
        "UW Quest",
        "Swift, Python",
        "iOS application for querying Quest Student Information in UWaterloo. Include real-time class schedule, grades, personal information...",
        github: "http://github.com/honghaoz/UW-Quest-iOS",
        completed: false // Currently working on
    )
    
    var tapTapHeartRate = (
        "Tap Tap Heart Rate",
        "Objective-C",
        "iOS application for meauring heart rate, foucs on simple and beautiful UI design.",
        appStore: "http://itunes.apple.com/app/id914222099",
        github: "http://github.com/honghaoz/Taptap-Heart-Rate-iOS",
        completed: true
    )
    
    var uWaterlooCourseNotifier = (
        "UWaterloo Course Notifier",
        "Python, Google App Engine",
        "Web application looking up course schedules and get notified for course openings.",
        link: "http://uw.honghaoz.com/uw-cen",
        github: "http://github.com/honghaoz/UWaterloo-Utilities-GAE",
        completed: true
    )
}

// Contact Me😄
var contact = [
    "LinkedIn"	   : "linkedin.com/in/honghaozhang",
    "Github"	   : "github.com/honghaoz",
    "StackOverflow": "stackoverflow.com/users/3164091/honghao-zhang"
]
