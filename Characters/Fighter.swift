//
//  Fighter.swift
//  DA IOS_P3
//
//  Created by ISABELLE Terwagne on 13/12/2018.
//  Copyright © 2018 ISABELLE Terwagne. All rights reserved.
//

import Foundation
class Fighter: Characters {
    init(name: String) {
        super.init(charactersName: name, lifePoint: 100, weapon: Sword(), type : "Fighter", isDead: false)
    }

}// end of the Class
var fighter = Fighter(name: " ")

