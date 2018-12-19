//
//  main.swift
//  P3
//
//  Created by ISABELLE Terwagne on 14/12/2018.
//  Copyright © 2018 ISABELLE Terwagne. All rights reserved.
//

import Foundation

game.presentMenu()
team1.namePlayer1()
team1.createTeam()
team2.namePlayer2()
team2.createTeam()
team1.printTeams()
team1.attackOrCareTeam1()
team2.attackOrCareTeam2()
while true {
    game.checkWinnerTeam1()
    team1.attackOrCareTeam1()
    game.checkWinnerTeam2()
    team2.attackOrCareTeam2()

}
