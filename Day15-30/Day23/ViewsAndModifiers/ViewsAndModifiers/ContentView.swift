//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Ömer Faruk Şahin on 24.07.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var isBlue = false
    
    var button: some View {
        Button("Hello!") {
            print(type(of: self.body))
            self.isBlue.toggle()
        }
    }
    
    let btn1 = Text("Welcome 1")
    let btn2 = Text("Welcome 2")
    var body: some View {
        VStack {
            VStack {
                    btn1
                    .font(.largeTitle)
                    btn2
                    // This does not change the text view because blur is a regular modifier
                    .blur(radius: 0)
                Text("Welcome 3")
                Text("Welcome 4")
            } // font modifier is an environment modifier and we can override it with a custom font
            .font(.title)
            .blur(radius: 5)
            
            // Use computed property to hold views as properties
            button
            // Use ternary operator to use conditional modifiers
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
