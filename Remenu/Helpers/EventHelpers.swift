//
//  EventHelpers.swift
//  Remenu
//
//  Created by Laurens on 08.07.20.
//  Copyright © 2020 Laurens. All rights reserved.
//

import Foundation
import EventKit

public class EventHelpers {
    
    static let eh = EventHelpers()
    
    func addTask(taskName: String) {
        
        DispatchQueue.main.async {
            let eventStore = EKEventStore()
            
            eventStore.requestAccess(to: .reminder) { (granted, error) in
                if let error = error {
                    print(error)
                    return
                }
                if granted {
                    let reminder = EKReminder(eventStore: eventStore)
                    reminder.title = taskName
                    reminder.calendar = eventStore.defaultCalendarForNewReminders()
                    do {
                        try eventStore.save(reminder, commit: true)
                    }catch{
                        print("Error creating and saving new reminder : \(error)")
                    }
                } else {
                    print("Not granted...")
                }
            }
        }
        
    }
    
}
