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
        super.init(charactersName: name, lifePoint: 150, weapon: Stick())
    }
}// end of the Class
var colossus = Colossus(name: " ")
