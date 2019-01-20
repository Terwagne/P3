//
//  Colossus.swift
//  DA IOS_P3
//
//  Created by ISABELLE Terwagne on 13/12/2018.
//  Copyright © 2018 ISABELLE Terwagne. All rights reserved.
//

import Foundation

class Colossus: Characters {
    init(name: String) {
        super.init(charactersName: name, weapon: stick, lifePoint: 150, type: "Colossus")
    }
}// end of the Class
var colossus = Colossus(name: "" )
