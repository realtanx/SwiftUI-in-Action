//
//  AppDelegate.swift
//  Pomodoro
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {
    
    var statusItem: NSStatusItem?
    var menuManager: MenuManager?
    @IBOutlet weak var statusMenu: NSMenu!
    


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        
        statusItem?.menu = statusMenu
        
        statusItem?.button?.title = "Pomodoro"
        statusItem?.button?.imagePosition = .imageLeading
        statusItem?.button?.image = NSImage(systemSymbolName: "timer", accessibilityDescription: "Pomodoro")
        statusItem?.button?.font = NSFont.monospacedDigitSystemFont(ofSize: NSFont.systemFontSize, weight: .regular)
        
        menuManager = MenuManager(statusMenu: statusMenu)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }


}

