//
//  ContentView.swift
//  Remenu
//
//  Created by Laurens on 08.07.20.
//  Copyright © 2020 Laurens. All rights reserved.
//

import SwiftUI
import EventKit

struct ContentView: View {
    
    @State private var taskName = ""
    
    @State private var showSettings = false
    
    var body: some View {
        HStack {
            TextField("Add task", text: $taskName).textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: {
                self.addTask()
            }) {
                Text("Add Task")
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding()
            .popover(isPresented: $showSettings) {
                Text("Select List").frame(width: 200, height: 200)
        }
    }
    
    func addTask() {
        if !self.taskName.isEmpty {
            EventHelpers.eh.addTask(taskName: self.taskName)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
