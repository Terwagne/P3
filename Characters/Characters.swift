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
    var type: String
    var isDead: Bool
    var weapon: Weapon
    var lifePoint: Int
//    var lifePoint: Int  {
//        willSet {
//            print("He has \(lifePoint) lifepoint")
//
//        }
//            didSet {
//            if oldValue < lifePoint {
//                print(" Great, you win \(lifePoint - oldValue) lifepoint")
//
//
//            }else if oldValue > lifePoint {
//                print(" He lost \(lifePoint - oldValue) Lifepoint")
//
//
//            }else if lifePoint <= 0 {
//                print("Bye, he is dead")
//
//
//    }
//    }
//    }
   
   
    

    init(charactersName: String, lifePoint: Int, weapon: Weapon, type: String, isDead: Bool) {
        self.charactersName = charactersName
        self.lifePoint = lifePoint
        self.weapon = weapon
        self.type = type
        self.isDead = isDead
      
        
    }
    
    //    attack function
    
    func attack (attackedTeam1: Characters) {
        if lifePoint > 0 {
            if attackedTeam1.lifePoint <= 0 {
            print("this character is dead")
            }else{
            attackedTeam1.lifePoint -= weapon.damage
                if attackedTeam1.lifePoint <= 0 {
                    attackedTeam1.lifePoint = 0
            
                }
                    print("\(type) inflicted \(weapon.damage) to \(attackedTeam1.charactersName)")
            }
            } else {
                    print("Sorry you can't attack beacause you are dead")
                }
    }
    
    
    
    
    
}// end of the Class


