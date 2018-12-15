//
//  Game.swift
//  DA IOS_P3
//
//  Created by ISABELLE Terwagne on 13/12/2018.
//  Copyright © 2018 ISABELLE Terwagne. All rights reserved.
//

import Foundation
class Game {
    
    var warriorA: String
    var warriorB: String
    var warriorC: String
    var warriorD: String
   
    
    init(warriorA: String, warriorB: String, warriorC:String, warriorD:String) {
       self.warriorA = warriorA
        self.warriorB = warriorB
        self.warriorC = warriorC
        self.warriorD = warriorD
    }
    
    // start a new game
    
    func presentMenu() {
        print("Hello and welcome to the DA IOS game specially designed for you.")
    }
    
    
    
    //  on affiche les combattants en vie
    
    
func fightingTeam1 (){
       
    print("Please, choose your attacker")
        
        team1.statTeam1()
        
    print("Enter the number of the character you choose between 1,2,3 ")
  
    //      on récupère le choix et on l'affiche
    if let warriorTeam1 = readLine()  {
        switch warriorTeam1 {
        case "1":
            print("You choose your fighter")
            warriorA = "Fighter"
        
        case "2":
            print("You choose your colossus")
            warriorA = "Colossus"
 
        case "3":
            print("You choose your dwarft)")
            warriorA = "Dwarft"

            
        default:
            break
        }
    }
   
    // on affiche les combattants de la partie adverse
    print("Who would you like to attack ?")
    
        team2.statTeam2()
    
    
    print(" enter the number 1, 2 or 3 for the character you want to attack")
    

    
    // on récupère le choix et on l'affiche
    if let attackedTeam2 = readLine() {
    
        switch attackedTeam2 {
        case "1":
            print("You choose his Fighter")
            
            if warriorA == "Fighter" {
                fighter.lifePoint = fighter.lifePoint - sword.damage
                
            }else if warriorA == "Colossus" {
               fighter.lifePoint = fighter.lifePoint - stick.damage
                
            }else if warriorA == "Dwarft" {
                fighter.lifePoint = fighter.lifePoint - ax.damage
            }
            print("his Fighter have now \(fighter.lifePoint) lifepoint")
            
        case "2":
            print("You choose his colossus")
            
            if warriorA == "Fighter" {
                colossus.lifePoint = colossus.lifePoint - sword.damage
                
            }else if warriorA ==  "Colossus" {
                colossus.lifePoint = colossus.lifePoint - stick.damage
                
            }else if warriorA == "Dwarft" {
                colossus.lifePoint = colossus.lifePoint - ax.damage
            }
            print("his colossus have now \(colossus.lifePoint) lifepoint")
            
            
        case "3":
            print("You choose his drawft")
            
            if warriorA == "Fighter" {
                dwarft.lifePoint = dwarft.lifePoint - sword.damage
                
            }else if warriorA == "Colossus" {
                dwarft.lifePoint = dwarft.lifePoint - stick.damage
                
            }else if warriorA == "Dwarft" {
                dwarft.lifePoint = dwarft.lifePoint - ax.damage
            }
            print("his dwarft have now \(dwarft.lifePoint) lifepoint")
        default:
            break
        }
    }
    
    }
//     on affiche les combattants choisis et en vie

    func fightingTeam2() {
    print("Please, choose your attacker")
 
       team2.statTeam2()
    
    print(" enter the number 1, 2 or 3 for the character you want to attack")
        

    // on récupère le choix et on l'affiche
    if let warriorTeam2 = readLine() {
        switch warriorTeam2 {
        case "1":
            print("You choose your Fighter")
            warriorC = "Fighter"
 
        case "2":
            print("You choose your Colossus")
            warriorC = "Colossus"
            
        case "3":
            print("You choose your Drawft")
            warriorC = "Dwarft"
           
        default:
            break
        }
    }
    

// on affiche les combattants de la partie adverse
        
    print("Who would you like to attack ?")
   
            team1.statTeam1()
        
        
    print(" enter the number 1 or 2 for the character you want to attack")
      
    


    //  on récupère le choix et on l'affiche
    if let attackedTeam1 = readLine() {
        switch attackedTeam1 {
        case "1":
            print("You choose his Fighter")
            if warriorC == "Fighter" {
                fighter.lifePoint = fighter.lifePoint - sword.damage
         
                
            }else if warriorC == "Colossus" {
                fighter.lifePoint = fighter.lifePoint - stick.damage
                 
                
            }else if warriorC == "Dwarft" {
                fighter.lifePoint = fighter.lifePoint - ax.damage
                          }
            print("his Fighter have now \(fighter.lifePoint) lifepoint ")
            
        case "2":
            print("You choose his Colossus")
            if warriorC == "Fighter" {
                colossus.lifePoint = colossus.lifePoint - sword.damage
                
            }else if warriorC == "Colossus" {
                colossus.lifePoint = colossus.lifePoint - stick.damage
                
            }else if warriorC == "Dwarft" {
                colossus.lifePoint = colossus.lifePoint - ax.damage
                
            }
            print("his Colossus have now \(colossus.lifePoint) lifepoint ")
            
        case "3":
            print("You choose his Drawft")
            
            if warriorC == "Fighter" {
                dwarft.lifePoint = dwarft.lifePoint - sword.damage
                
            }else if warriorC == "Colossus"{
                dwarft.lifePoint = dwarft.lifePoint - stick.damage
                
            }else if  warriorC == "Dwarft" {
                dwarft.lifePoint = dwarft.lifePoint - ax.damage
                
            }
            print("his Dwarft have now \(dwarft.lifePoint) lifepoint")
            
            
        default:
            break
            
        }
        
    }

    }

// care
func careTeam1() {
    
    print("Who would you care for ?")
    team1.statTeam1()
        
        
        print(" enter the number 1 or 2 for the character you want to attack")
    
    
    if let choice = readLine(){
        switch choice {
        case "1":
            print("Your fighter")
            fighter.lifePoint = fighter.lifePoint + potion.damage
            print (" Your fighter has now \(fighter.lifePoint) lifepoint")
        case "2":
            print("Your colossus")
            colossus.lifePoint = colossus.lifePoint + potion.damage
            print ("Your colossus has now \(colossus.lifePoint) lifepoint")
        case "3" :
            print("dwarft")
            dwarft.lifePoint = dwarft.lifePoint + potion.damage
            print ("Your dwarft has now \(dwarft.lifePoint) lifepoint ")
        default:
            break
        }
    }
}
    
//    care
    func careTeam2() {
        
        print("Who would you care for ?")
        team2.statTeam2()
            
            print(" enter the number 1 or 2 for the character you want to attack")
        
        if let choice = readLine(){
            switch choice {
            case "1":
                print("Your fighter")
                fighter.lifePoint = fighter.lifePoint + potion.damage
                print (" Your fighter has now \(fighter.lifePoint) lifepoint")
            case "2":
                print("Your colossus")
                colossus.lifePoint = colossus.lifePoint + potion.damage
                print ("Your colossus has now \(colossus.lifePoint) lifepoint")
            case "3" :
                print("dwarft")
                dwarft.lifePoint = dwarft.lifePoint + potion.damage
                print ("Your dwarft has now \(dwarft.lifePoint) lifepoint ")
            default:
                break
            }
        }
    }
    
    func Winner() {
        for _ in 0..<team1.compositionTeam.count {
            if team1.deathTeams() {
                print("The winner Is \(team2.nameOfThePlayer)")
                print("End of game ")
            }else if
                team2.deathTeams() {
                print("The winner Is \(team1.nameOfThePlayer)")
                print("End of game ")                }
            
        }
   
    }
    
}// end of the Class
var game = Game (warriorA: "", warriorB: "", warriorC: "", warriorD: "")

