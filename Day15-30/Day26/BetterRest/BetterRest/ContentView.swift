//
//  ContentView.swift
//  BetterRest
//
//  Created by Ömer Faruk Şahin on 31.07.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepingHours = 8.0
    
    var body: some View {
        Stepper(value: $sleepingHours, in: 4...12, step: 0.25, label: {
            Text("\(sleepingHours, specifier: "%g") hours")
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
