//
//  Magus.swift
//  DA IOS_P3
//
//  Created by ISABELLE Terwagne on 13/12/2018.
//  Copyright © 2018 ISABELLE Terwagne. All rights reserved.
//

import Foundation
class Magus: Characters {
    init(name: String) {
        super.init(charactersName: name, lifePoint: 20, weapon: Potion(), type: "Magus", isDead: false)
    }
}// end of the Class
var magus = Magus(name: "")
