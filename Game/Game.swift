//
//  Game.swift
//  DA IOS_P3
//
//  Created by ISABELLE Terwagne on 13/12/2018.
//  Copyright © 2018 ISABELLE Terwagne. All rights reserved.
//

import Foundation
class Game {
    
    var warriorA: Characters
    var warriorB: Characters
    var warriorC: Characters
    var warriorD: Characters
   
    
    init(warriorA: Characters, warriorB: Characters, warriorC:Characters, warriorD:Characters) {
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
    team1.statTeam1 ()
        
    print("Enter the number of the character you choose")
  
    //      on récupère le choix et on l'affiche

    if let warriorTeam1 = readLine(){
        switch warriorTeam1 {
        case "1":
            print("You choose your fighter")
            warriorA = fighter
        
        case "2":
            print("You choose your colossus")
            warriorA = colossus
 
        case "3":
            print("You choose your dwarft)")
            warriorA = dwarft

            
        default:
            break
        }
    }
   
    // on affiche les combattants de la partie adverse
    print("Who would you like to attack ?")
    
        team2.statTeam2()
    
    
    print(" enter the number of the character you want to attack")
    

    
    // on récupère le choix et on l'affiche
    if let attackedTeam2 = readLine() {
    
        
        switch attackedTeam2 {
        case "1":
            print("You choose his Fighter")

            if warriorA is Fighter{
                fighter.lifePoint = fighter.lifePoint - sword.damage

            }else if warriorA is Colossus{
               fighter.lifePoint = fighter.lifePoint - stick.damage

            }else if warriorA is Dwarft {
                fighter.lifePoint = fighter.lifePoint - ax.damage
            }
            if fighter.lifePoint >= 1 {
            print("his Fighter have now \(fighter.lifePoint) lifepoint")
            }else{
                print("Yes ! his fighter is dead")
                fighter.isDead = true
                }

        case "2":
            print("You choose his colossus")

            if warriorA is Fighter {
                colossus.lifePoint = colossus.lifePoint - sword.damage

            }else if warriorA is Colossus {
                colossus.lifePoint = colossus.lifePoint - stick.damage

            }else if warriorA is Dwarft {
                colossus.lifePoint = colossus.lifePoint - ax.damage
            }
            if colossus.lifePoint >= 1 {
            print("his colossus have now \(colossus.lifePoint) lifepoint")
            }else{
                print("Yes ! his colossus is dead")
                colossus.isDead = true
            }


        case "3":
            print("You choose his drawft")

            if warriorA is Fighter  {
                dwarft.lifePoint = dwarft.lifePoint - sword.damage

            }else if warriorA is Colossus {
                dwarft.lifePoint = dwarft.lifePoint - stick.damage

            }else if warriorA is Dwarft {
                dwarft.lifePoint = dwarft.lifePoint - ax.damage
            }
            if dwarft.lifePoint >= 1 {
            print("his dwarft have now \(dwarft.lifePoint) lifepoint")
            }else{
                print ("Yes ! his dwarft is dead")
                dwarft.isDead = true
                }

        default:
            break
        }
    }
    }
//     on affiche les combattants choisis et en vie

    func fightingTeam2() {
    print("Please, choose your attacker")
       team2.statTeam2()
    print(" enter the number of the character you want to attack")
        
    // on récupère le choix et on l'affiche
    if let warriorTeam2 = readLine() {
        switch warriorTeam2 {
        case "1":
            print("You choose your Fighter")
            warriorC = fighter
 
        case "2":
            print("You choose your Colossus")
            warriorC = colossus
        case "3":
            print("You choose your Drawft")
            warriorC = dwarft
           
        default:
            break
        }
    }
    
// on affiche les combattants de la partie adverse
    print("Who would you like to attack ?")
            team1.statTeam1()
    print(" enter the number of the character you want to attack")
      

    //  on récupère le choix et on l'affiche
    if let attackedTeam1 = readLine(){
    
        switch attackedTeam1 {
        case "1":
            print("You choose his Fighter")
            if warriorC is Fighter {
                fighter.lifePoint = fighter.lifePoint - sword.damage


            }else if warriorC is Colossus {
                fighter.lifePoint = fighter.lifePoint - stick.damage


            }else if warriorC is Dwarft {
                fighter.lifePoint = fighter.lifePoint - ax.damage
                          }
            if fighter.lifePoint >= 1 {
            print("his Fighter have now \(fighter.lifePoint) lifepoint ")
            }else{
               print ("Yes ! his fighter is dead")
                fighter.isDead = true

                }
        
        case "2":
            print("You choose his Colossus")
            if warriorC is Fighter{
                colossus.lifePoint = colossus.lifePoint - sword.damage
                
            }else if warriorC is Colossus {
                colossus.lifePoint = colossus.lifePoint - stick.damage
                
            }else if warriorC is Dwarft {
                colossus.lifePoint = colossus.lifePoint - ax.damage
                
            }
            if colossus.lifePoint >= 1 {
            print("his Colossus have now \(colossus.lifePoint) lifepoint ")
            }else{
                print("Yes ! his Colossus is dead")
                colossus.isDead = true
            }
        case "3":
            print("You choose his Drawft")
            
            if warriorC is Fighter {
                dwarft.lifePoint = dwarft.lifePoint - sword.damage
                
            }else if warriorC is Colossus{
                dwarft.lifePoint = dwarft.lifePoint - stick.damage
                
            }else if  warriorC is Dwarft{
                dwarft.lifePoint = dwarft.lifePoint - ax.damage
                
            }
            if dwarft.lifePoint >= 1 {
            print("his Dwarft have now \(dwarft.lifePoint) lifepoint")
            }else{
                print ("Yes ! His dwarft is dead")
                dwarft.isDead = true
            }
            
        default:
            break
        }
        }
        
        

    }
    
    
    
// care
func careTeam1() {
    
    print("Who would you care for ?")
    team1.statTeam1()
        print(" enter the number of the character you want to health")
    
    
    if let choice = readLine(){
        switch choice {
        case "1":
            print("Your fighter")
            fighter.lifePoint = fighter.lifePoint + potion.damage
            if fighter.lifePoint >= 1 {
            print (" Your fighter has now \(fighter.lifePoint) lifepoint")
            }else{
                print("Sorry, your fiighter is dead")
            }
        case "2":
            print("Your colossus")
            colossus.lifePoint = colossus.lifePoint + potion.damage
            if colossus.lifePoint >= 1 {
            print ("Your colossus has now \(colossus.lifePoint) lifepoint")
            }else{
                print("Sorry your colossus is dead")
                }
        case "3" :
            print("dwarft")
            dwarft.lifePoint = dwarft.lifePoint + potion.damage
                if dwarft.lifePoint >= 1 {
                print ("Your dwarft has now \(dwarft.lifePoint) lifepoint ")
                }else{
                    print ("Sorry Your Drawft is dead")
                }
        default:
            break
        }
    }
        }//        fonction care Team1
    
//    care
    func careTeam2() {
        
        print("Who would you care for ?")
        team2.statTeam2()
            
            print(" enter the number of the character you want to health")
        
        if let choice = readLine(){
            switch choice {
            case "1":
                print("Your fighter")
                fighter.lifePoint = fighter.lifePoint + potion.damage
                if fighter.lifePoint >= 1 {
                print (" Your fighter has now \(fighter.lifePoint) lifepoint")
                }else{
                    print("Sorry your fighter is dead")
                }
            case "2":
                print("Your colossus")
                colossus.lifePoint = colossus.lifePoint + potion.damage
                if colossus.lifePoint >= 1 {
                    print (" Your colossus has now \(colossus.lifePoint) lifepoint")
                }else{
                    print("Sorry your colossus is dead")
                }
            case "3" :
                print("dwarft")
                if dwarft.lifePoint >= 1 {
                    dwarft.lifePoint = dwarft.lifePoint + potion.damage
                print ("Your dwarft has now \(dwarft.lifePoint) lifepoint ")
                }else{
                    print("Sorry Your Drawft is dead")
                }
            default:
                break
            }
        }
       } // en of the function care 2
        
    func checkWinnerTeam1() {
        var winner: Bool
        for _ in team1.compositionTeam {
            if fighter.isDead == false && colossus.isDead == false && dwarft.isDead == false {
                
                winner = false
            }else {
                    winner = true
                    print("The winner Is \(team1.nameOfThePlayer)")
                    print("End of game ")
                    break
                }

            }
        
    
    }//    end of check Winner
    
    func checkWinnerTeam2() {
        var winner: Bool
        for _ in team2.compositionTeam {
            if fighter.isDead == false && colossus.isDead == false && dwarft.isDead == false{
                
                        
                        winner = false
            }else{
                    winner = true
                
                        print("The winner Is \(team1.nameOfThePlayer)")
                        print("End of game ")
                        break
            }
        }
        
    }//    end of check Winner
    
     
   
    
    
    
    
    
    
}// end of the Class
var game = Game (warriorA: fighter, warriorB: fighter, warriorC: fighter, warriorD: fighter)

