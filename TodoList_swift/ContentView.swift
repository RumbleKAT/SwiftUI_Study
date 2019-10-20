//
//  ContentView.swift
//  TodoList_swift
//
//  Created by 송명진 on 16/10/2019.
//  Copyright © 2019 송명진. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            Form{ //one row to 10 row
                Section{
                    Text("Hello World")
                }
            }
            .navigationBarTitle(Text("SwiftUI"),displayMode: .inline)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
