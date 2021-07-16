//
//  ContentView.swift
//  WeSplit
//
//  Created by Ömer Faruk Şahin on 12.07.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var amountChecked = ""
    // Default value is 2(we can split into 2 min)
    @State private var numberOfPeople = 2
    // Index number
    @State private var tipPercentage = 0
    
    let percentages = [0, 10, 15, 20, 25]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount: ", text: $amountChecked).keyboardType(.decimalPad)
                    
                    Picker("Number of People", selection: $numberOfPeople) {
                        ForEach(2 ..< 100) {
                            Text("\($0) people")
                        }
                    }
                    
                    Text("\(numberOfPeople + 2)")
                }
                
                Section {
                    Text("$\(amountChecked)")
                }
            }
            .navigationBarTitle("WeSplit")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
