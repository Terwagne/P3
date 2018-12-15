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
   
    var lifePoint: Int  {
        willSet {
            print("He has \(lifePoint) lifepoint")
        }
        didSet {
            if oldValue < lifePoint {
                print(" Great, you win \(lifePoint - oldValue) lifepoint")
            }else if oldValue > lifePoint {
                print(" He lost \(lifePoint - oldValue) Lifepoint")
            }else if lifePoint <= 0 {
                print("Bye, he is dead")
                //    }else {
                //    print("lifePoint are \(lifePoint)")
            }
        }
    }
    
  
    var weapon: Weapon

    init(charactersName: String, lifePoint: Int, weapon: Weapon) {
        self.charactersName = charactersName
        self.lifePoint = lifePoint
        self.weapon = weapon
        
    }
    
}// end of the Class


