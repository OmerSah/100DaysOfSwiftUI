//
//  ContentView.swift
//  BetterRest
//
//  Created by Ömer Faruk Şahin on 31.07.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepingHours = 8.0
    @State private var wakeUp = Date()
    @State private var randomDay = Date()
    @State private var secondRandDay = Date()
    
    var body: some View {
        // Set it to the current date
        let now = Date()
        // 86400 : 1 day in seconds
        let tomorrow = Date().addingTimeInterval(86400)
        let range = now ... tomorrow
        
        VStack {
            Stepper(value: $sleepingHours, in: 4...12, step: 0.25, label: {
                Text("\(sleepingHours, specifier: "%g") hours")
            })
            
            // Between today and tomorrow
            DatePicker("Now to tomorrow", selection: $randomDay, in: range)
            // From now to future not past
            DatePicker("Now to future", selection: $secondRandDay, in: Date()...)
            
            DatePicker("Select the hour", selection: $wakeUp, displayedComponents: .hourAndMinute).labelsHidden()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
