//
//  Honghao.swift
//  Honghao-page
//
//  Created by Honghao Zhang on 2014-11-10.
//  Last updated on 2015-01-02.
//  Copyright (c) 2014 HonghaoZ. All rights reserved.
//  http://honghaoz.com

import Honghao

// About Me
let myName = "Honghao Zhang" //😃
var currentLocation = "Waterloo, ON, Canada"
let graduate      = "University of Waterloo, Waterloo, Canada" //👍
let undergraduate = "Southeast University, Nanjing, China" //👌

// My Resume
var resume: NSURL = NSURL(string: "http://honghaoz.com/resume-honghao.pdf")!

// My Projects
struct Project {
    var uwInfoSession = (
        "UW Info Session",
        "Objective-C, Python, Google App Engine",
        "iOS application for querying employer info sessions held in UWaterloo.",
        appStore: "http://itunes.apple.com/app/id837207884", // Check it out!
        github  : "http://github.com/honghaoz/UW-Info-Session-iOS",
        completed: true
    )
    
    var dateFormatter = (
        "Date Formatter app - Developer Utility",
        "Swift", // Swift is so AWESOME!!!😎😎
        "iOS application, handy developer tool for verifying ISO 8601 date format with reference",
        appStore: "http://itunes.apple.com/app/id949590319",
        github  : "https://github.com/honghaoz/DateFormatter-iOS",
        completed: true
    )
    
    var uwQuest = (
        "UW Quest",
        "Swift, Python", // I love Swift & Python!
        "iOS application for querying Quest Student Information in UWaterloo. Include real-time class schedule, grades, personal information...",
        github: "http://github.com/honghaoz/UW-Quest-iOS",
        completed: false // Still ongoing💪
    )
    
    var tapTapHeartRate = (
        "Tap Tap Heart Rate", // Beautiful UI :)
        "Objective-C",
        "iOS application for meauring heart rate, foucs on simple and beautiful UI design.",
        appStore: "http://itunes.apple.com/app/id914222099",
        github  : "http://github.com/honghaoz/Taptap-Heart-Rate-iOS",
        completed: true
    )
    
    var uWaterlooCourseNotifier = (
        "UWaterloo Course Notifier", // My first web application😆
        "Python, Google App Engine",
        "Web application looking up course schedules and get notified for course openings.",
        link  : "http://uw.honghaoz.com/uw-cen",
        github: "http://github.com/honghaoz/UWaterloo-Utilities-GAE",
        completed: true
    )
}

// Contact Me😄
var contact = [
    "Email"        : "honghao.zhang@uwaterloo.ca",
    "LinkedIn"	   : "linkedin.com/in/honghaozhang",
    "Github"	   : "github.com/honghaoz",
    "StackOverflow": "stackoverflow.com/users/3164091/honghao-zhang"
    ]