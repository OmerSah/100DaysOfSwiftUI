//
//  ContentView.swift
//  WeSplit
//
//  Created by Ömer Faruk Şahin on 12.07.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    @State private var userInput = ""
    var body: some View {
        NavigationView {
            Form {
                Group {
                    Text("Hello, world!")
                        .padding()
                    Text("Hello, world!")
                        .padding()
                    Text("Hello, world!")
                        .padding()
                }
                
                Section {
                    Text("Hello, world!")
                        .padding()
                    Text("Hello, world!")
                        .padding()
                }
                
                Button("Tap Count \(tapCount)") {
                    self.tapCount += 1
                }
                
                Section {
                    TextField("Enter a message!", text: $userInput)
                    Text("Your message: \(userInput)")
                }
            }
            .navigationBarTitle(Text("SwiftUI"), displayMode: .inline)
            // .navigationBarTitle("SwiftUI")
        }
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
