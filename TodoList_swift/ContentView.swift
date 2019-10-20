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
                
                Section{
                    Text("$\(checkAmount)")
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
