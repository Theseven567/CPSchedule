//
//  Subject.swift
//  DatabaseProject
//
//  Created by Егор on 11/16/16.
//  Copyright © 2016 Yegor's Mac. All rights reserved.
//

import UIKit

class Subject: NSObject{
    
    var type: String
    var name: String
    var start: String
    var end: String
    var room: String
    var instructor: String
    var day: String
    init(type: String, name: String, start: String, end: String, room: String, instructor: String, day:String) {
        self.type = type
        self.name = name
        self.start = start
        self.end = end
        self.room = room
        self.instructor = instructor
        self.day = day
    }
    
    }
