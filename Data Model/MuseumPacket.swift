//
//  MuseumPacket.swift
//  MuseumApp
//
//  Created by Minh Vu on 4/3/18.
//  Copyright © 2018 Sergio R Martin. All rights reserved.
//

import Foundation
import UIKit

// Google: "swift printable protocol"
//https://developer.apple.com/documentation/swift/customstringconvertible
class MuseumPacket: CustomStringConvertible {
    var title: String
    var date: String
    var location: String

    // Various initializers
    
    init(title: String, date: String,
         location: String) {
        self.title = title
        self.date = date
        self.location = location
    }
    
    init() {
        self.title = ""
        self.date = ""
        self.location = ""
    }
    
    init(aDictionary: NSDictionary) {
        self.title = aDictionary.value(forKey: "title") as! String
        self.date = aDictionary.value(forKey: "date") as! String
        self.location = aDictionary.value(forKey: "location") as! String
    }
    
    // [Printable] Return a description string of this object
    var description: String {
        return "Date \(date), \(title): Loc: \(location)"
    }
    
}
