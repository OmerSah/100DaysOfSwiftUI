//
//  ContentView.swift
//  WeSplit
//
//  Created by Ömer Faruk Şahin on 12.07.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
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
            }
            .navigationBarTitle(Text("SwiftUI"), displayMode: .inline)
            // .navigationBarTitle("SwiftUI")
            
        }
        
        Button("Tap Count \(tapCount)") {
            self.tapCount += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
