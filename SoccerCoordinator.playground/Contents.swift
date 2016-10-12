//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// storing each player's data in a dictionnary


let player1: [String: Any] = ["name": "Joe Smith", "height": 42, "isexperienced": true, "guardians": "Jim and Jan Smith"]
let player2: [String: Any] = ["name": "Jill Tanner", "height": 36, "isexperienced": true, "guardians": "Clara Tanner"]
let player3: [String: Any] = ["name": "Bill Bon", "height": 43, "isexperienced": true, "guardians": "Sara and Jenny Bon"]
let player4: [String: Any] = ["name": "Eva Gordon", "height": 45, "isexperienced": false, "guardians": "Wendy and Mike Gordon"]
let player5: [String: Any] = ["name": "Matt Gill", "height": 40, "isexperienced": false, "guardians": "Charles and Sylvia Gill"]
let player6: [String: Any] = ["name": "Kimmy Stein", "height": 41, "isexperienced": false, "guardians": "Bill and Hilary Stein"]
let player7: [String: Any] = ["name": "Sammy Adams", "height": 45, "isexperienced": false, "guardians": "Jeff Adams"]
let player8: [String: Any] = ["name": "Karl Saygan", "height": 42, "isexperienced": true, "guardians": "Heather Bledsoe"]
let player9: [String: Any] = ["name": "Suzanne Greenberg", "height": 44, "isexperienced": true, "guardians": "Henrietta Dumas"]
let player10: [String: Any] = ["name": "Sal Dali", "height": 41, "isexperienced": false, "guardians": "Gala Dali"]
let player11: [String: Any] = ["name": "Joe Kavalier", "height": 39, "isexperienced": false, "guardians": "Sam and Elaine Kavalier"]
let player12: [String: Any] = ["name": "Ben Finkelstein", "height": 44, "isexperienced": false, "guardians": "Aaron and Jill Finkelstein"]
let player13: [String: Any] = ["name": "Diego Soto", "height": 41, "isexperienced": true, "guardians": "Robin and Sarika Soto"]
let player14: [String: Any] = ["name": "Chloe Alaska", "height": 47, "isexperienced": false, "guardians": "David and Jamie Alaska"]
let player15: [String: Any] = ["name": "Arnold willis", "height": 43, "isexperienced": false, "guardians": "Claire Willis"]
let player16: [String: Any] = ["name": "Phillip Helm", "height": 44, "isexperienced": true, "guardians": "Thomas Helm and Eva Jones"]
let player17: [String: Any] = ["name": "Les Clay", "height": 42, "isexperienced": true, "guardians": "Wynonna Brown"]
let player18: [String: Any] = ["name": "Herschel Krustoski", "height": 45, "isexperienced": true, "guardians": "Hyman and Rachel Krustofski"]

// creating an array with all players

var allPlayers = [ player1 ,player2 ,player3 ,player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]

// experienced and non experienced players

var exPlayers: [[String: Any]] = []
var nonExPlayers: [[String: Any]] = []

// assigning players to experienced group and non experienced group

for player in allPlayers {
    if player["isexperienced"] as! Bool == true {
        exPlayers.append(player)
    } else {
        nonExPlayers.append(player)
    }
}

// creating the teams

var dragons: [[String: Any]] = []
var sharks: [[String: Any]] = []
var raptors: [[String: Any]] = []
var allTeams = [dragons, sharks, raptors]

// calculations I will be using for my logic

var averageNumberPerTeam = allPlayers.count / allTeams.count
var averageExPlayerPerTeam = exPlayers.count / allTeams.count
var averageNonExPlayerPerTeam = nonExPlayers.count / allTeams.count

func divideEvenly() {
    
    
    // using logic to sort experienced player evenly into teams => if the number of players in a team is smaller than the average number of skilled players on the team then add experienced player.
    
    for experiencedPlayer in exPlayers {
        if dragons.count < averageExPlayerPerTeam {
            dragons.append(experiencedPlayer)
        } else if sharks.count < averageExPlayerPerTeam {
            sharks.append(experiencedPlayer)
        } else if raptors.count < averageExPlayerPerTeam {
            raptors.append(experiencedPlayer)
        }
    }
    
    // using logic to add the non experienced players into teams => if the number of players in a team is smaller than the average number of players on a team then add non experienced player.
    
    for nonExperiencedPlayer in nonExPlayers {
        if dragons.count < averageNumberPerTeam {
            dragons.append(nonExperiencedPlayer)
        } else if sharks.count < averageNumberPerTeam {
            sharks.append(nonExperiencedPlayer)
        } else if raptors.count < averageNumberPerTeam {
            raptors.append(nonExperiencedPlayer)
        }
        
    }
}

divideEvenly()

// Checking count per team

dragons.count
sharks.count
raptors.count

// letters to the guardians


for player in dragons {
    print ("Dear \(player["guardians"]!), We are happy to inform you that \(player["name"]!) has been placed in the Dragon Team! The first practice will take place on March 17th at 1pm. See you then!")
}

for player in sharks {
    print ("Dear \(player["guardians"]!), We are happy to inform you that \(player["name"]!) has been placed in the Sharks Team! The first practice will take place on March 17th at 1pm. See you then!")
}

for player in raptors {
    print ("Dear \(player["guardians"]!), We are happy to inform you that \(player["name"]!) has been placed in the Raptors Team! The first practice will take place on March 17th at 1pm. See you then!")
}




