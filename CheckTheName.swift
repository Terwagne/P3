//
//  CheckTheName.swift
//  DA IOS_P3
//
//  Created by ISABELLE Terwagne on 13/12/2018.
//  Copyright © 2018 ISABELLE Terwagne. All rights reserved.
//
// class to check the name of warriors to be a unique name
import Foundation

class CheckNameOfWarrior {
    var nameWarrior: [String] = []
    static let share = CheckNameOfWarrior()
    
    func uniqueWarriorName() -> String {
        var warriorName = ""
        repeat {
            print("Choose a Name to your Warrior : ")
            if let data = readLine() {
                warriorName = data
                if nameWarrior.contains(warriorName) { // test unique name
                    print("")
                    print("This name : '\(warriorName)' has been used. Please choose another one :")
                    warriorName = ""
                } else {
                    nameWarrior.append(warriorName) // if the name does not existed. it's added to the collection compositionTeam
                    print("Thank you, you choose")
                }
            }
        } while warriorName == ""
        return warriorName
    }
}

