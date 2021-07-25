//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Ömer Faruk Şahin on 24.07.2021.
//

import SwiftUI

// Create a custom modifier
struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(Color.red)
            .clipShape(Capsule())
    }
}

struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(Color.black)
        }
    }
}

extension View {
    func watermarked(_ text: String) -> some View {
        self.modifier(Watermark(text: text))
    }
}

// Wrap custom modifier into an extension
extension View {
    func stylizedTitle() -> some View {
        self.modifier(Title())
    }
}

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
            .watermarked("Omer Faruk Sahin")
            
            // Use custom modifier with a content
            Text("Stylized Title").stylizedTitle()
        
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
