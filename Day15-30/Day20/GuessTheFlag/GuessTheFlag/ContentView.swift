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
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue, Color.white]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack(spacing: 50) {
                ZStack {
                    // Customized color and radial gradient with specified frame
                    RadialGradient(gradient: Gradient(colors: [Color(red: 0, green: 3, blue: 5), Color.pink]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: 20, endRadius: 100).frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
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
                }
                // Background with angular gradient
                .background(AngularGradient(gradient: Gradient(colors: [Color.red, Color.white, Color.purple, Color.yellow]), center: .center).frame(width: 200, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/))
                HStack(spacing: 50) {
                    Text("O")
                    Text("O")
                    Text("O")
                }.background(Color.blue.frame(width: 200,height: 50))
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
