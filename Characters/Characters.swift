//
//  Characters.swift
//  DA IOS_P3
//
//  Created by ISABELLE Terwagne on 13/12/2018.
//  Copyright © 2018 ISABELLE Terwagne. All rights reserved.
//

import Foundation

class Characters {
    var charactersName: String
    var weapon: Weapon
    let type: String
    var lifePoint: Int {
        willSet { // getter to check and print the lifepoints after each fighting
            print("\(type) has \(lifePoint) lifepoint")
        }
        didSet {
            if oldValue < lifePoint {
                print(" Great, you win \(lifePoint - oldValue) lifepoint")
            } else if oldValue > lifePoint {
                print(" \(type) lost \(lifePoint - oldValue) Lifepoint")
            }
        }
    }
    
    init(charactersName: String, weapon: Weapon, lifePoint: Int, type: String) {
        self.charactersName = charactersName
        self.weapon = weapon
        self.lifePoint = lifePoint
        self.type = type
    }
    
    //    attacks functions for each teams
    func attackTeam1 (warriorB: Characters) {
        if lifePoint > 0 {
            if warriorB.lifePoint <= 0 {
                print("this character is dead")
            } else {
                warriorB.lifePoint -= weapon.damage
                if warriorB.lifePoint <= 0 {
                    print("Yes, you kill his \(warriorB.type)")
                }
            }
        }
    }
    func attackTeam2 (warriorD: Characters) {
        if warriorD.lifePoint > 0 {
            if warriorD.lifePoint <= 0 {
                print("this character is dead")
            } else {
                warriorD.lifePoint -= weapon.damage
                if warriorD.lifePoint <= 0 {
                    print("Yes, you kill his \(warriorD.type)")
                }
            }
        }
    }
}// end of the Class


