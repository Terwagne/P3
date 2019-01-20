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
    var compositionTeam = [Int: Characters]()
    var magicien: Magus
    
    init(nameOfThePlayer: String, magicien: Magus){
        self.nameOfThePlayer = nameOfThePlayer
        self.magicien = magicien
    }
    
    
    // name the players
    func namePlayer1()  {
        print("Please enter the name of the first player")
        if let player1 = readLine() {
            nameOfThePlayer = player1
        }
    }
    func namePlayer2()  {
        print("Please enter the name of second the player")
        if let player2 = readLine() {
            nameOfThePlayer = player2
        }
    }
    // choose your characters
    private func chooseCharactersTeam () {
        
        print("Please choose your characters :"
            + "\n1.😈 a Fighter who has a sword that causes 10 damages and have 100 lifepoints"
            + "\n2.👹 a Colossus who has a stick that causes 5 damages and have 150 lifepoints"
            + "\n3.🤡 a Dwarft who has a ax that causes 50 damages and have 30 lifepoints"
            + "\n4.🧙‍♂️ a Magus who has a potion that heals attackers by increasing their life by 20 lifepoints")
        print("===============================================================================================")
    }
    func createTeam () {
        for _ in 0...2 {
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
                print(" a Fighter 👿")
                compositionTeam[1] = Fighter(name: warriorName)
                print("nammed \(warriorName)")
            case 2: // colossus
                print(" a Colossus 👹")
                compositionTeam[2] = Colossus(name: warriorName)
                print("nammed \(warriorName)")
            case 3: // dwarft
                print("a Dwarft 🤡")
                compositionTeam[3] = Dwarft(name: warriorName)
                print("nammed \(warriorName)")
            case 4: // magus
                print(" a Magus 🧙‍♀️")
                magicien = Magus(name: warriorName)
                print("nammed \(warriorName)")
            default:
                print("Please choose a character")
            }
        }
    }
    // display the composition of the teams
    func printTeams() {
        print ("Your teams are made up and have the following names : \(team1.nameOfThePlayer) against \(team2.nameOfThePlayer)"
            + "\n here are their composition :"
            + "\n \(team1.nameOfThePlayer)")
        
        for (key, value) in team1.compositionTeam {
            team1.compositionTeam = [Int : Characters](uniqueKeysWithValues: team1.compositionTeam.sorted{ $0.key < $1.key })
            print("\(key) A \(value.type) named \(value.charactersName) that own a \(value.weapon.weaponName) and have \(value.lifePoint) lifePoint")
        }
        if team1.magicien.charactersName.isEmpty {
            print("you have not choose Magus")
        } else {
            print("\(team1.magicien.charactersName), your mage that increase the life of warrior about 20 points of life")
        }
        print("==========================================================================================")
        print("\(team2.nameOfThePlayer)")
        
        for (key, value) in team2.compositionTeam{
            team2.compositionTeam = [Int : Characters](uniqueKeysWithValues: team2.compositionTeam.sorted{ $0.key < $1.key })
            print("\(key) A \(value.type) named \(value.charactersName) that own a \(value.weapon.weaponName) and have \(value.lifePoint) lifePoint")
        }
        if team2.magicien.charactersName.isEmpty{
            print("you have not choose Magus")
        } else {
            print("\(team2.magicien.charactersName), your mage that increase the life of warrior about 20 points of life")
            print("======================================================================================")
        }
    }
    // purpose to attack or health at the team1
    func attackOrCareTeam1() {
        print(" ok \(team1.nameOfThePlayer), What do you want to do ?"
            + "\n1 attack ?"
            + "\n2 care ?")
        
        if let choice = readLine() {
            switch choice {
            case "1":
                game.fightingTeam1()
            case "2":
                game.careTeam1()
                game.bonusTeam1()
            default:
                print("I did not understant")
            }
        }
    }
    // purpose to attack or health at the team2
    func attackOrCareTeam2() {
        print(" ok \(team2.nameOfThePlayer), What do you want to do ?"
            + "\n1 attack ?"
            + "\n2 care ?")
        
        if let choice = readLine() {
            switch choice {
            case "1":
                game.fightingTeam2()
            case "2":
                game.careTeam2()
                game.bonusTeam2()
            default:
                print("I did not understant")
            }
        }
    }
    // display fighters in life for the team1
    func statsTeam1() {
        for (key, value) in team1.compositionTeam {
            print(" \(key) A \(value.type) named \(value.charactersName) that own a \(value.weapon.weaponName) and have \(value.lifePoint) lifePoints")
        }
    }// end of statTeam1
    
    // display fighters in life for the team2
    func statsTeam2() {
        for (key, value) in team2.compositionTeam {
            print("\(key) A \(value.type) named \(value.charactersName) that own a \(value.weapon.weaponName) and have \(value.lifePoint) lifePoints")
        }
    } // end of statTeam2
    
    func checkWinnerTeam1() {
        if team1.compositionTeam.isEmpty {
            print("***************The winner is \(team2.nameOfThePlayer)************")
            print("====================GAME OVER===========================")
            team1.compositionTeam.removeAll()
            team2.compositionTeam.removeAll()
            game.presentMenu()
        }
    }//    end of check Winner team 1
    
    func checkWinnerTeam2() {
        if team2.compositionTeam.isEmpty {
            print("************The winner is \(team1.nameOfThePlayer)*****************")
            print("====================GAME OVER===========================")
            team2.compositionTeam.removeAll()
            team1.compositionTeam.removeAll()
            game.presentMenu()
        }
    }//    end of check Winner team2
}//End of the class
var team1 = Team(nameOfThePlayer: "", magicien: magus)
var team2 = Team(nameOfThePlayer: "", magicien: magus)


