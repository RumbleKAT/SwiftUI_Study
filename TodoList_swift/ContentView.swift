//
//  ContentView.swift
//  TodoList_swift
//
//  Created by 송명진 on 16/10/2019.
//  Copyright © 2019 송명진. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    
    let Students = ["Harry", "Hermione","Ron"]
    @State private var selectedStudent = "Harry"
    
    var body: some View{
        
        VStack{
            Picker("Select your student", selection: $selectedStudent){
                ForEach(0 ..< Students.count){
                    Text(self.Students[$0])
                }
            }
        }
        
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
