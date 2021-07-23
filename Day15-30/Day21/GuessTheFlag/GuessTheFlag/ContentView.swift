//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Ömer Faruk Şahin on 20.07.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0 ... 2)
    
    @State private var isTapped = false
    
    @State private var scoreTitle = ""
    
    var body: some View {
        ZStack {
            Color.blue.edgesIgnoringSafeArea(.all)
            VStack(spacing: 30) {
                VStack {
                    Text("Tap the correct flag").foregroundColor(.white)
                    Text(countries[correctAnswer]).foregroundColor(.white)
                }
                
                ForEach(0 ..< 3) { number in
                    Button(action: {
                        self.flagTapped(number)
                    }, label: {
                        Image(self.countries[number]).renderingMode(.original)
                    })
                }

                Spacer()
            }
        }
        .alert(isPresented: $isTapped, content: {
            Alert(title: Text(scoreTitle), message: Text("Your score is !!!"), dismissButton: .default(Text("Continue")) {
                self.restartGame()
            })
        })
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
        } else {
            scoreTitle = "Wrong"
        }
        
        isTapped = true
    }
    
    func restartGame() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0 ... 2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
