//
//  GameDetailsModel.swift
//  GameFinder
//
//  Created by Trevor Burbidge on 8/29/18.
//  Copyright © 2018 tkburbidge. All rights reserved.
//

import UIKit

class GameModel: NSObject {
    var name: String
    var time: String
    
    override init() {
        self.name = ""
        self.time = ""
        
        super.init()
    }
    
    init(name: String, time: String) {
        self.name = name
        self.time = time
    }
}
