//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Ömer Faruk Şahin on 20.07.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Ignore safe areas
            Color.green.ignoresSafeArea()
            VStack(spacing: 50) {
                ZStack {
                    // Customized color with specified frame
                    Color(red: 0.5, green: 0.3, blue: 0.6).frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    HStack(spacing: 50) {
                        Text("O")
                        Text("O")
                        Text("O")
                    }
                }
                HStack(spacing: 50) {
                    Text("O")
                    Text("O")
                    Text("O")
                }.background(Color.red)
                HStack(spacing: 50) {
                    Text("O")
                    Text("O")
                    Text("O")
                }.background(Color.blue.frame(width: 200,height: 100))
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
