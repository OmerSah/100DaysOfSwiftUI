//
//  ContentView.swift
//  Convert
//
//  Created by Ömer Faruk Şahin on 19.07.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var length = ""
    @State private var inputUnit = 0
    @State private var outputUnit = 0
    
    let lengthUnits = ["m", "km", "feet", "yard", "miles"]
    // Meter equivalent of all units
    let valuesOfUnits = [1, 1000, 0.3048, 0.9144, 1609.344]
    
    var result: Double {
        let magnitude = (Double(length) ?? 0)
        let rate = valuesOfUnits[inputUnit] / valuesOfUnits[outputUnit]
        return magnitude * rate
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Input Unit")) {
                    Picker("Input Unit",selection: $inputUnit) {
                        ForEach(0 ..< lengthUnits.count) {
                            Text("\(lengthUnits[$0])")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }.textCase(nil)
                
                Section(header: Text("Output Unit")) {
                    Picker("Input Unit",selection: $outputUnit) {
                        ForEach(0 ..< lengthUnits.count) {
                            Text("\(lengthUnits[$0])")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }.textCase(nil)
                
                Section {
                    TextField("Length", text: $length).keyboardType(.decimalPad)
                }
                
                Section(header: Text("Result")) {
                    Text("\(result, specifier: "%.4f")")
                }.textCase(nil)
            }
            .navigationTitle("ConvertUnit")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
