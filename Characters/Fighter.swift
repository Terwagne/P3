//
//  Fighter.swift
//  DA IOS_P3
//
//  Created by ISABELLE Terwagne on 13/12/2018.
//  Copyright © 2018 ISABELLE Terwagne. All rights reserved.
//

import Foundation
class Fighter: Characters {
    init(name: String){
        super.init(charactersName: name, weapon: sword,  lifePoint: 100, type : "Fighter")
    }

}// end of the Class
var fighter = Fighter(name: " ")

