//
//  Team.swift
//  DA IOS_P3
//
//  Created by ISABELLE Terwagne on 13/12/2018.
//  Copyright © 2018 ISABELLE Terwagne. All rights reserved.
//

import Foundation
class Team {
    var nameOfThePlayer: String
    var compositionTeam = [Characters]()
    init(nameOfThePlayer: String){
        self.nameOfThePlayer = nameOfThePlayer
    }
   
    // name the players
    
    func namePlayer1()  {
        print("Please enter the name of the first player")
        if let player = readLine() {
            nameOfThePlayer = player
        }
    }
    func namePlayer2()  {
        print("Please enter the name of second the player")
        if let player = readLine() {
            nameOfThePlayer = player
        }
    }
    // choose your characters
    
    func chooseCharactersTeam () {
        
        print("Please choose your characters :"
            + "\n1.😈 a Fighter who has a sword that causes 10 damage and have 100 lifepoint"
            + "\n2.👹 a colossus who has a stick that causes 5 damage and have 150 lifepoint"
            + "\n3.🤡 a dwarft who has a ax that causes 50 damage and have  20 lifepoint"
            + "\n4.🧙‍♂️ a Magus who has a potion that heals attackers by increasing their life by 20 lifepoint")
    }
    
    func createTeam () {
        
        for _ in 0..<3 {
            var choiceTeam = 0
            repeat {
                chooseCharactersTeam()   // call the function describe characters
                
                if let data = readLine() {
                    if let dataToInt = Int(data) {
                        choiceTeam = dataToInt
                    }
                }
            } while choiceTeam != 1 && choiceTeam != 2 && choiceTeam != 3 && choiceTeam != 4
            
            let warriorName = CheckNameOfWarrior.share.uniqueWarriorName()
            switch choiceTeam {
            case 1: // fighter
                print(" a Fighter")
                compositionTeam.append(Fighter(name: warriorName))
            case 2: // colossus
                print(" a Colossus")
               compositionTeam.append(Colossus(name: warriorName))
                
            case 3: // dwarft
                print("a Dwarft")
                compositionTeam.append(Dwarft(name: warriorName))
            case 4: // magus
                print(" a Magus")
              compositionTeam.append(Magus(name: warriorName))
            default:
                print("Please choose a character")
            }
        }
        
    }
    func printTeams() {
        print ("Your teams are made up and have the following names : \(team1.nameOfThePlayer) against \(team2.nameOfThePlayer)"
            + "\n here are their composition :"
            + "\n \(team1.nameOfThePlayer)")
        for i in 0..<team1.compositionTeam.count {
            let warrior = team1.compositionTeam[i]
            print(" A \(team1.compositionTeam[i]) named \(warrior.charactersName) that own a \(warrior.weapon) and have \(warrior.lifePoint) lifePoint")
            
        }
        print("\(team2.nameOfThePlayer)")
        for i in  0..<team2.compositionTeam.count {
            let warrior = team2.compositionTeam[i]
            print(" A \(team2.compositionTeam[i]) named \(warrior.charactersName) that own a \(warrior.weapon) and have \(warrior.lifePoint) lifePoint")
            
            
        }
    
    }
    // Attack or Care
    
    func attackOrCareTeam1() {
        repeat {
        print(" ok \(team1.nameOfThePlayer), What do you want to do ?"
            + "\n1 attack ?"
            + "\n2 care ?")
        
        
        if let choice = readLine() {
            switch choice {
            case "1":
               game.fightingTeam1()
                
            case "2":
               game.careTeam1()
            default:
                print("I did not understant")
            }
        }
      
    }while deathTeams()
        
    }

    func attackOrCareTeam2() {
        repeat{
        print(" ok \(team2.nameOfThePlayer), What do you want to do ?"
            + "\n1 attack ?"
            + "\n2 care ?")
        
        
        if let choice = readLine() {
            switch choice {
            case "1":
              game.fightingTeam2()
                
                
            case "2":
                game.careTeam2()
            default:
                print("I did not understant")
            }
        }
    }while deathTeams()
    }
    
    func statTeam1() {
        for i in 0..<team1.compositionTeam.count {
       let warrior = team1.compositionTeam[i]

            if warrior.lifePoint >= 0 {
            print(" A \(team1.compositionTeam[i]) named \(warrior.charactersName) that own a \(warrior.weapon) and have \(warrior.lifePoint) lifePoint")
           }else{
                print(" Your \(warrior.charactersName) is dead")
            }
    }
    }
        func statTeam2 () {
        for i in  0..<team2.compositionTeam.count {
            let warrior = team2.compositionTeam[i]
            if warrior.lifePoint >= 0 {
                print(" A \(team2.compositionTeam[i]) named \(warrior.charactersName) that own a \(warrior.weapon) and have \(warrior.lifePoint) lifePoint")
            }else {
                print(" Your \(warrior.charactersName) is dead")
                
            }
    }
            
    }
    
    
    func deathTeams() -> Bool {
        var isDead = false
        for warrior in compositionTeam {
            if warrior.lifePoint <= 0 {
                isDead = true
            } else {
                return false
            }
        }
        return isDead
    }
    
    
    
}//End of the class

var team1 = Team(nameOfThePlayer: "")
var team2 = Team(nameOfThePlayer: "")
