//
//  main.swift
//  Assignment1
//
//  Created by Merey Orynbassar on 26.04.2022.
//

import Foundation


// First and worst implementation of code

//var userChoice: String
//var computerChoice: String
//var randomValue =  Int.random(in: 0..<3)
//
//
//if (randomValue == 0){
//    computerChoice = "rock"
//}else if (randomValue == 1){
//    computerChoice = "paper"
//}else {
//    computerChoice = "sci"
//}
//
//print("Enter rock,paper or sci ")
//userChoice = readLine()!
//
//if computerChoice == "rock"{
//    if userChoice == "rock"{
//        print("Tie")
//    }else if userChoice == "paper"{
//        print ("U win!")
//    }else{
//        print("You lose!")
//    }
//}else if computerChoice == "paper"{
//    if userChoice == "paper"{
//        print("Tie")
//    }else if userChoice == "rock"{
//        print ("U lose!")
//    }else{
//        print("You win!")
//    }
//}else {
//    if userChoice == "sci"{
//        print("Tie")
//    }else if userChoice == "paper"{
//        print ("U lose!")
//    }else{
//        print("You win!")
//    }
//}


// Second and more reliable implementation of code after error bugs


enum Game{
    case rock
    case paper
    case scissors
}



let game: [Game] = [.rock,.paper,.scissors]


func randomGenerate() -> Game{
    return game.randomElement()!
//    return game.randomElement() ?? .rock
}


func whoIsWinner(userChoice: Game, computerChoice: Game){

    switch userChoice {
    case .rock:
        if computerChoice == .paper{
            print("You won")
        }else if computerChoice == .scissors{
            print("You lose")
        }else{
            print("tie")
        }
    case .paper:
        if computerChoice == .rock{
            print("You won")
        }else if computerChoice == .scissors{
            print("You lose")
        }else{
            print("tie")
        }
    case .scissors:
        if computerChoice == .paper{
            print("You won")
        }else if computerChoice == .rock{
            print("You lose")
        }else{
            print("tie")
        }
    }

}


print("Please choose")
print("""
1. rock
2. paper
3. scissors
""")
var read = readLine()!

switch read {
case "1":
   print( whoIsWinner(userChoice: .rock, computerChoice: randomGenerate()))
case "2":
   print( whoIsWinner(userChoice: .paper, computerChoice: randomGenerate()))
case "3":
   print( whoIsWinner(userChoice: .scissors, computerChoice: randomGenerate()))
default:
    print("Invalid number")
}
