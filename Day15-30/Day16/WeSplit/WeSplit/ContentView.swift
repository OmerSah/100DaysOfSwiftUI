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
    let lessons = ["Science", "Math", "CS"]
    @State private var selectedLesson = 0
    var body: some View {
        NavigationView {
            Form {
                Group {
                    ForEach(0 ..< 5) {
                        Text("Row: \($0)")
                    }
                }
                
                Section {
                    Picker("Choose your lesson", selection: $selectedLesson) {
                        ForEach(0 ..< lessons.count) {
                            Text(self.lessons[$0])
                        }
                    }
                    Text("Selected: \(lessons[selectedLesson])")
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
