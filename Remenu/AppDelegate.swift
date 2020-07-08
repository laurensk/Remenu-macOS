//
//  AppDelegate.swift
//  Remenu
//
//  Created by Laurens on 08.07.20.
//  Copyright © 2020 Laurens. All rights reserved.
//

import Cocoa
import SwiftUI

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    var popover = NSPopover.init()
    var statusBar: StatusBarController?

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Create the SwiftUI view that provides the contents
        let contentView = ContentView()

        // Set the SwiftUI's ContentView to the Popover's ContentViewController
        popover.contentViewController = MainViewController()
        popover.contentSize = NSSize(width: 360, height: 50)
        popover.contentViewController?.view = NSHostingView(rootView: contentView)
        
        // Create the Status Bar Item with the Popover
        statusBar = StatusBarController.init(popover)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
}

