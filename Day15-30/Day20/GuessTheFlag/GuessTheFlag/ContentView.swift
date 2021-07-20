//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Ömer Faruk Şahin on 20.07.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 50) {
            HStack(spacing: 50) {
                Text("O")
                Text("O")
                Text("O")
            }
            HStack(spacing: 50) {
                Text("O")
                Text("O")
                Text("O")
            }
            HStack(spacing: 50) {
                Text("O")
                Text("O")
                Text("O")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
