//
//  ContentView.swift
//  Remenu
//
//  Created by Laurens on 08.07.20.
//  Copyright © 2020 Laurens. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var taskName = ""
    
    @State private var showSettings = false
    
    var body: some View {
        HStack {
            TextField("Add task", text: $taskName).textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: {
                
            }) {
                Text("Add Task")
            }
            Button(action: {
                self.showSettings.toggle()
            }) {
                Text("􀍟")
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
            .popover(isPresented: $showSettings) {
                Text("Select List").frame(width: 200, height: 200)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
