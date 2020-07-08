//
//  MenuBarHideHelpers.swift
//  Remenu
//
//  Created by Laurens on 08.07.20.
//  Copyright © 2020 Laurens. All rights reserved.
//

import Foundation
import Cocoa

public class HideHelpers {
    static func hide() {
        let delegate = (NSApplication.shared.delegate) as! AppDelegate
        delegate.statusBar?.togglePopover(sender: self as AnyObject)
    }
}
