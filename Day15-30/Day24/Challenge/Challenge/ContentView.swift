//
//  ContentView.swift
//  Challenge
//
//  Created by Ömer Faruk Şahin on 26.07.2021.
//

import SwiftUI

struct CustomTitle: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        VStack {
            Text(text)
            .font(.largeTitle)
            .foregroundColor(.blue)
            content
        }
    }
}

extension View {
    func customTitle(text: String) -> some View {
        self.modifier(CustomTitle(text: text))
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
                .customTitle(text: "Custom Title")
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
