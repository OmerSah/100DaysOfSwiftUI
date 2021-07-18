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
    @State private var numberOfPeople = ""
    // Index number
    @State private var tipPercentage = 0
    
    let percentages = [0, 10, 15, 20, 25]
    
    var amountPerPerson: Double {
        let totalPercentage: Double = 1 + Double(percentages[tipPercentage]) / 100
        let amount = (Double(amountChecked) ?? 0) * totalPercentage
        let peopleCount = (Double(numberOfPeople) ?? 0)
        
        if peopleCount == 0 {return 0}
        
        return amount / peopleCount
    }
    
    var totalAmount: Double {
        let totalPercentage: Double = 1 + Double(percentages[tipPercentage]) / 100
        let amount = (Double(amountChecked) ?? 0) * totalPercentage
        
        return amount
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount", text: $amountChecked).keyboardType(.decimalPad)
                    
                    TextField("Number of People", text: $numberOfPeople).keyboardType(.numberPad)
                }
                
                Section(header: Text("Please enter your tip percentage")) {
                    Picker("Tip Percentage", selection: $tipPercentage) {
                        ForEach(0 ..< percentages.count) {
                            Text("\(self.percentages[$0])%")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }.textCase(nil)
                
                Section(header: Text("Amount per person")) {
                    Text("$\(amountPerPerson, specifier: "%.2f")")
                }.textCase(nil)
                
                Section(header: Text("Total amount")) {
                    Text("$\(totalAmount, specifier: "%.2f")")
                }.textCase(nil)
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
