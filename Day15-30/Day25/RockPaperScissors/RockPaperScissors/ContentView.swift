//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Ömer Faruk Şahin on 30.07.2021.
//

import SwiftUI

struct ContentView: View {
    let options = ["Rock", "Paper", "Scissors"]
    
    @State private var playerChoice = -1
    @State private var randomChoice = Int.random(in: 0 ... 2)
    @State private var shouldWin = Bool.random()
    @State private var isTapped = false
    @State private var numberOfGames = 1
    @State private var score = 0
    @State private var resultTitle = ""
    
    var gameResult: Bool {
        let res = randomChoice - playerChoice
        
        let gameStatus = (res == -1 || res == 2)
        
        let totalRes = (gameStatus == shouldWin)
        
        return totalRes
    }
    
    var whatShouldBe: String {
        return shouldWin ? "You should win!" : "You should lose!"
    }
    
    var body: some View {
        VStack(spacing: 10) {
            Text(whatShouldBe)
            
            Text("Choice: \(options[randomChoice])")
            Text("Your choice:")
    
            ForEach(0 ..< 3) { number in
                Button(options[number]) {
                    // Same moves does not affect the game
                    if number != randomChoice {
                        playerChoice = number
                        self.moveTapped()
                    }
                    
                }
            }.alert(isPresented: $isTapped, content: {
                Alert(title: Text(resultTitle), dismissButton: .default(Text("OK")) {
                    self.restartGame()
                })
            })
        }
    }
    
    func moveTapped() {
        isTapped = true
        score += gameResult ? 1 : -1
        
        if numberOfGames == 10 {
            numberOfGames = 0
            resultTitle = "The end! Your score is \(score)"
        } else {
            resultTitle = gameResult ? "Correct" : "Wrong"
        }
    }
    
    func restartGame() {
        randomChoice = Int.random(in: 0 ... 2)
        shouldWin = Bool.random()
        isTapped = false
        numberOfGames += 1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
