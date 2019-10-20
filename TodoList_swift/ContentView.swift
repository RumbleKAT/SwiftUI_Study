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
        Form{
            Section{
                TextField("Amount",text: $checkAmount)
                    .keyboardType(.decimalPad)
                
                //keyboardType은 가상머신에서 직접 입력가능 -> Preview에선 불가함
            }
            
            Section{
                Text("$\(checkAmount)")
            }
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
