//
//  ContentView.swift
//  TodoList_swift
//
//  Created by 송명진 on 16/10/2019.
//  Copyright © 2019 송명진. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    @State private var name = ""
    
    var body: some View {
        Form{
            TextField("Enter  your name",text: $name)
            Text("Your name is \(name)")// 2 way binding dosen't needed
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
