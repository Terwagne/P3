//
//  Game.swift
//  DA IOS_P3
//
//  Created by ISABELLE Terwagne on 13/12/2018.
//  Copyright © 2018 ISABELLE Terwagne. All rights reserved.
//

import Foundation
class Game {
    var warriorA: Characters //userchoice attacker team1
    var warriorB: Characters //userchoice attached team1
    var warriorC: Characters //userchoice attacker team2
    var warriorD: Characters //userchoice attached team2
    
    init(warriorA: Characters, warriorB: Characters, warriorC: Characters, warriorD: Characters) {
        self.warriorA = warriorA
        self.warriorB = warriorB
        self.warriorC = warriorC
        self.warriorD = warriorD
    }
    
    // start a new game
    // present the rules of the game
    func presentMenu() {
        print("Hello and welcome to the DA IOS game specially designed for you."
            + "\n Here are the rules: you must form a team of 3 characters."
            + "\n The mage can not attack or be attacked. His role is to care for the members of your teams. "
            + "\n You fight between fighters. The winner is the one who killed the opposing team's fighters."
            + "\n However, this game has a few surprises .....")
        print("==================================================================================================")
        team1.namePlayer1()
        team1.createTeam()
        team2.namePlayer2()
        team2.createTeam()
        team1.printTeams()
    }
  
    // Launch the game and fighting session for player one
    func fightingTeam1() {
        //  Show fighters in life
        print("Please, choose your attacker")
        team1.statsTeam1()
        print("Enter the number of the character you choose")
        
        //We pick up the choice and display it
        if let warriorTeam1 = readLine() {
            switch warriorTeam1 {
            case "1":
                if team1.compositionTeam[1] == nil {
                    print("you couldn' choose this warrior")
                    fightingTeam1()
                } else {
                    print("You choose your Fighter 👿")
                    warriorA = team1.compositionTeam[1]!
                }
            case "2":
                if team1.compositionTeam[2] == nil {
                    print("you couldn' choose this warrior")
                    fightingTeam1()
                } else {
                    print("You choose your Colossus 👹")
                    warriorA = team1.compositionTeam[2]!
                }
            case "3":
                if team1.compositionTeam[3] == nil {
                    print("you couldn' choose this warrior")
                    fightingTeam1()
                } else {
                    print("You choose your Dwarft 🤡")
                    warriorA = team1.compositionTeam[3]!
                }
            default:
                break
            }
        }
        // Opponents' fighters are displayed
        // random for the chest
        chestTeam1(character: warriorA)
        print("Who would you like to attack ?")
        team2.statsTeam2()
        print("enter the number of the character you want to attack")
        
        //We pick up the choice and display it
        if let attackedTeam2 = readLine() {
            switch attackedTeam2 {
            case "1":
                print("You choose his Fighter 👿")
                warriorB = team2.compositionTeam[1]!
                warriorA.attackTeam1(warriorB: warriorB)
                if warriorB.lifePoint < 1 {
                    team2.compositionTeam.removeValue(forKey: 1)
                    team2.checkWinnerTeam2()
                } else {
                    print("\(team2.nameOfThePlayer), it's your turn !")
                }
            case "2":
                print("You choose his Colossus 👹")
                warriorB = team2.compositionTeam[2]!
                warriorA.attackTeam1(warriorB: warriorB)
                if warriorB.lifePoint < 1 {
                    team2.compositionTeam.removeValue(forKey: 2)
                    team2.checkWinnerTeam2()
                } else {
                    print("\(team2.nameOfThePlayer), it's your turn !")
                }
            case "3":
                print("You choose his Dwarft🤡")
                warriorB = team2.compositionTeam[3]!
                warriorA.attackTeam1(warriorB: warriorB)
                if warriorB.lifePoint < 1 {
                    team2.compositionTeam.removeValue(forKey: 3)
                    team2.checkWinnerTeam2()
                } else {
                    print("\(team2.nameOfThePlayer), it's your turn !")
                }
            default:
                break
            }
        }
    }
    // Launch the game and fighting session for player two
    func fightingTeam2() {
        print("Please, choose your attacker")
        team2.statsTeam2()
        print(" enter the number of the character you want to attack")
        
        // We pick up the choice and display it
        if let warriorTeam2 = readLine() {
            switch warriorTeam2 {
            case "1":
                if team2.compositionTeam[1] == nil {
                    print("you couldn' choose this warrior")
                    fightingTeam2()
                } else {
                    print("You choose your Fighter 👿")
                    warriorC = team2.compositionTeam[1]!
                }
            case "2":
                if team2.compositionTeam[2] == nil {
                    print("you couldn' choose this warrior")
                    fightingTeam2()
                } else {
                    print("You choose your Colossus 👹")
                    warriorC = team2.compositionTeam[2]!
                }
            case "3":
                if team2.compositionTeam[3] == nil {
                    print("you couldn' choose this warrior")
                    fightingTeam2()
                } else {
                    print("You choose your Drawft 🤡")
                    warriorC = team2.compositionTeam[3]!
                }
            default:
                break
            }
        }
        
        // Opponents' fighters are displayed
        //    random for the chest
        chestTeam2(character: warriorC)
        print("Who would you like to attack ?")
        team1.statsTeam1()
        print("enter the number of the character you want to attack")
        
        //  We pick up the choice and display it
        if let attackedTeam1 = readLine() {
            switch attackedTeam1 {
            case "1":
                print("You choose his Fighter 👿")
                warriorD = team1.compositionTeam[1]!
                warriorC.attackTeam2(warriorD: warriorD)
                if warriorD.lifePoint < 1 {
                    team1.compositionTeam.removeValue(forKey: 1)
                    team1.checkWinnerTeam1()
                } else {
                    print(" \(team1.nameOfThePlayer), it's your turn!")
                }
            case "2":
                print("You choose his Colossus 👹")
                warriorD = team1.compositionTeam[2]!
                warriorC.attackTeam2(warriorD: warriorD)
                if warriorD.lifePoint < 1 {
                    team1.compositionTeam.removeValue(forKey: 2)
                    team1.checkWinnerTeam1()
                } else {
                    print(" \(team1.nameOfThePlayer), it's your turn!")
                }
            case "3":
                print("You choose his Drawft 🤡")
                warriorD = team1.compositionTeam[3]!
                warriorC.attackTeam2(warriorD: warriorD)
                if warriorD.lifePoint < 1 {
                    team1.compositionTeam.removeValue(forKey: 3)
                    team1.checkWinnerTeam1()
                } else {
                    print(" \(team1.nameOfThePlayer), it's your turn!")
                }
            default:
                break
            }
        }
    }
    // Function to health the team1 fighters's
    func careTeam1() {
        print("Who would you care for ?")
        team1.statsTeam1()
        print(" enter the number of the character you want to health")
        
        if let choice = readLine() {
            switch choice {
            case "1":
                print("Your fighter 👿")
                if team1.compositionTeam[1] == nil {
                    print("Your fighter is dead, you can not resuscitate him")
                } else {
                    team1.compositionTeam[1]!.lifePoint = team1.compositionTeam[1]!.lifePoint + potion.damage
                    if  team1.compositionTeam[1]!.lifePoint >= 100 {
                        print(" Stop !, you are a fighter, you can't have more of 100 lifepoint so")
                        team1.compositionTeam[1]!.lifePoint = 100
                        print (" Your fighter has now \(team1.compositionTeam[1]!.lifePoint) lifepoints")
                    }
                }
            case "2":
                print("Your colossus 👹")
                if team1.compositionTeam[2] == nil {
                    print("Your colossus is dead, you can not resuscitate him")
                } else {
                    team1.compositionTeam[2]!.lifePoint = team1.compositionTeam[2]!.lifePoint + potion.damage
                    if  team1.compositionTeam[2]!.lifePoint >= 150 {
                        print(" Stop !, you are a colossus, you can't have more of 150 lifepoint so")
                        team1.compositionTeam[2]!.lifePoint = 150
                        print (" Your colossus has now \(team1.compositionTeam[2]!.lifePoint) lifepoints")
                    }
                }
            case "3" :
                print("Your dwarft 🤡")
                if team1.compositionTeam[3] == nil {
                    print("Your dwarft is dead, you can not resuscitate him")
                } else {
                    team1.compositionTeam[3]!.lifePoint = team1.compositionTeam[3]!.lifePoint + potion.damage
                    if  team1.compositionTeam[3]!.lifePoint >= 30 {
                        print(" Stop !, you are a dwarft, you can't have more of 30 lifepoints so")
                        team1.compositionTeam[3]!.lifePoint = 30
                        print (" Your dwarft has now \(team1.compositionTeam[3]!.lifePoint) lifepoints")
                    }
                }
            default:
                break
            }
        }
        
    }//  End of the fonction care Team1
    
    //  function to health the team2 fighter's
    func careTeam2() {
        print("Who would you care for ?")
        team2.statsTeam2()
        print(" enter the number of the character you want to health")
        
        if let choice = readLine() {
            switch choice {
            case "1":
                print("Your fighter 👿")
                if team2.compositionTeam[1] == nil {
                    print("Your fighter is dead, you can not resuscitate him")
                } else {
                    team2.compositionTeam[1]!.lifePoint = team2.compositionTeam[1]!.lifePoint + potion.damage
                    if  team2.compositionTeam[1]!.lifePoint >= 100{
                        print(" Stop !, you are a fighter, you can't have more of 100 lifepoints so")
                        team2.compositionTeam[1]!.lifePoint = 100
                        print (" Your fighter has now \(team2.compositionTeam[1]!.lifePoint) lifepoints")
                    }
                }
            case "2":
                print("Your colossus 👹")
                if team2.compositionTeam[2] == nil {
                    print("Your colossus is dead, you can not resuscitate him")
                } else {
                    team2.compositionTeam[2]!.lifePoint = team2.compositionTeam[2]!.lifePoint + potion.damage
                    if  team2.compositionTeam[2]!.lifePoint >= 150 {
                        print(" Stop !, you are a colossus, you can't have more of 150 lifepoints so")
                        team2.compositionTeam[2]!.lifePoint = 150
                        print (" Your colossus has now \(team2.compositionTeam[2]!.lifePoint) lifepoints")
                    }
                }
            case "3" :
                print("Your dwarft 🤡")
                if team2.compositionTeam[3] == nil {
                    print("Your dwarft is dead, you can not resuscitate him")
                } else {
                    team2.compositionTeam[3]!.lifePoint = team2.compositionTeam[3]!.lifePoint + potion.damage
                    if  team2.compositionTeam[3]!.lifePoint >= 30 {
                        print(" Stop !, you are a dwarft, you can't have more of 30 lifepoints so")
                        team2.compositionTeam[3]!.lifePoint = 30
                        print (" Your dwarft has now \(team2.compositionTeam[3]!.lifePoint) lifepoints")
                    }
                }
            default:
                break
            }
        }
    } // end of the function care 2
    
    //function to make appear randomly a chest that contains a grenade for the team 1
    private func chestTeam1(character: Characters) {
        let random = arc4random_uniform(100)
        if random <= 30 {
            print("Great ! You found a grenade 💥")
            let newArm = grenade
            
            if warriorA is Fighter && team1.compositionTeam[1] != nil {
                team1.compositionTeam[1]!.weapon = newArm
            } else if warriorA is Colossus && team1.compositionTeam[2] != nil {
                team1.compositionTeam[2]!.weapon = newArm
            } else if warriorA is Dwarft && team1.compositionTeam[3] != nil {
                team1.compositionTeam[3]!.weapon = newArm
            }
        }
    }//    end of the function Chest team1
    
    //function to make appear randomly a chest that contains a grenade for the team 2
    private func chestTeam2(character: Characters) {
        let random = arc4random_uniform(100)
        
        if random <= 30 {
            print("Great ! You found a grenade 💥")
            let newArm = grenade
            if warriorC is Fighter && team2.compositionTeam[1] != nil{
                team2.compositionTeam[1]!.weapon = newArm
            } else if warriorC is Colossus && team2.compositionTeam[2] != nil {
                team2.compositionTeam[2]!.weapon = newArm
            } else if warriorC is Dwarft  && team2.compositionTeam[3] != nil {
                team2.compositionTeam[3]!.weapon = newArm
            }
        }
    }//    end of the function Chest Team2
    
    //function bonus - meet Superman who offer a bottle of krypton water that give the life point max to warriors
    func bonusTeam1() {
        let bonus = arc4random_uniform(100)
        
        if bonus <= 30 {
            print("You just met Superman")
            print("He decides to help you")
            print("Superman offers you Krypton water")
            print(" All your warriors have their life points max")
            
            if team1.compositionTeam[1] != nil {
                team1.compositionTeam[1]!.lifePoint = 100 }
            if team1.compositionTeam[2] != nil {
                team1.compositionTeam[2]!.lifePoint = 150 }
            if team1.compositionTeam[3] != nil {
                team1.compositionTeam[3]!.lifePoint = 30 }
        }
    }//    end of the function Bonus team 1
    
    func bonusTeam2() {
        let bonus = arc4random_uniform(100)
        
        if bonus <= 30 {
            print("You just met Superman")
            print("He decides to help you")
            print("Superman offers you Krypton water")
            print(" All your warriors have their life points max")
            
            if team2.compositionTeam[1] != nil {
                team2.compositionTeam[1]!.lifePoint = 100}
            if team2.compositionTeam[2] != nil {
                team2.compositionTeam[2]!.lifePoint = 150}
            if team2.compositionTeam[3] != nil {
                team2.compositionTeam[3]!.lifePoint = 30}
        }
    }//    end of the function Bonus Team 2
}// end of the Class
var game = Game(warriorA: fighter, warriorB: fighter, warriorC: fighter, warriorD: fighter)
