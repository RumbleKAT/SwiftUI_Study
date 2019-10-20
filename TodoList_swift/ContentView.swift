//
//  ContentView.swift
//  TodoList_swift
//
//  Created by 송명진 on 16/10/2019.
//  Copyright © 2019 송명진. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    
    @State private var checkAmount = ""
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 2
    
    let tipPercentages = [10,15,20,25,0]
    
    var totalPerPerson: Double{
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentages[tipPercentage])
        let orderAmount = Double(checkAmount) ?? 0
        
//        let stringValue = "0.5"
//        let doubleValue = Double(stringValue)
        
        let tipValue = orderAmount / 100 * tipSelection
        let grandTotal = orderAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        
        return amountPerPerson
    }
    
    
    var body: some View{
        NavigationView{
            Form{
                Section{
                    TextField("Amount",text: $checkAmount)
                        .keyboardType(.decimalPad)
                    //Navagation View가 있어야 10개 이상의 셀렉션 데이터를 볼수 있음
                    Picker("Number of people",selection: $numberOfPeople){
                        ForEach(2 ..< 100){
                            Text("\($0) people")
                        }
                    }
                }
                
                Section(header : Text("How much tip do you want to leave?")){
                    
                    Picker("Tip percentages",selection: $tipPercentage){
                        ForEach(0 ..< tipPercentages.count){
                            Text("\(self.tipPercentages[$0])%")
                        }
                    }                 .pickerStyle(SegmentedPickerStyle())

                }
                
                Section{
                    Text("$\(totalPerPerson, specifier: "%.2f")")
                }
            }.navigationBarTitle("We Split", displayMode: .inline)
            
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
