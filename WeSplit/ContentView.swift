//
//  ContentView.swift
//  WeSplit
//
//  Created by Atharv  on 17/07/25.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    @FocusState private var amountIsFocused: Bool
    
    let tipPercentages = [0, 5, 10 , 15, 20]
    
    var totalPerPerson: Double {
        return checkAmount / Double(numberOfPeople + 2) * (1 + Double(tipPercentage)/100)
    }
    
    var body: some View {
        NavigationStack{
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    
                    Picker("number of People", selection: $numberOfPeople){
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                }
                    
                    Section("how much do you want to tip?") {
                        Picker("Tip Percentage", selection: $tipPercentage){
                            ForEach(tipPercentages, id: \.self) {
                                Text(($0), format: .percent )
                            }
                        }
                        .pickerStyle(.segmented)
                    }
                
                Section{
                    Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
                
            }
            .navigationTitle("WeSplit")
            .toolbar {
                if amountIsFocused{
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
