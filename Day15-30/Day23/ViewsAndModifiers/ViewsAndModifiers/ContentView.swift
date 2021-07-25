//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Ömer Faruk Şahin on 24.07.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var isBlue = false
    
    var body: some View {
        VStack {
            VStack {
                Text("Welcome")
                    .font(.largeTitle)
                Text("Welcome")
                    // This does not change the text view because blur is a regular modifier
                    .blur(radius: 0)
                Text("Welcome")
                Text("Welcome")
            } // font modifier is an environment modifier and we can override it with a custom font
            .font(.title)
            .blur(radius: 5)
            
            Button("Hello!") {
                print(type(of: self.body))
                self.isBlue.toggle()
            } // Use ternary operator to use conditional modifiers
            .foregroundColor(isBlue ? Color.blue : Color.white)
            .padding()
            .background(Color.red)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.blue).edgesIgnoringSafeArea(.all)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
