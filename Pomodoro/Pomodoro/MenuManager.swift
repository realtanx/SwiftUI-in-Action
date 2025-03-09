//
//  MenuManager.swift
//  Pomodoro
//

import Foundation
import AppKit

class MenuManager: NSObject, NSMenuDelegate {
    
    let statusMenu: NSMenu
    var isOpen = false
    var tasks: [Task] = []
    
    init(statusMenu: NSMenu) {
        self.statusMenu = statusMenu
        super.init()
        
        self.statusMenu.delegate = self
        
        let t1 = Task(title: "Task 1", status: .completed, textColor: .brown, iconName: "timer", progressPercent: 100)
        let t2 = Task(title: "Task 2", status: .inProgress, textColor: .blue, iconName: "timer", progressPercent: 20)
        let t3 = Task(title: "Task 3", status: .notStarted, textColor: .gray, iconName: "timer", progressPercent: 0)
        tasks.append(t1)
        tasks.append(t2)
        tasks.append(t3)
        
        showTasks()
    }
    
    func showTasks() {
        var taskIndex = 4
        var taskCount = 0
        
        for task in tasks {
            let item = NSMenuItem()
            let taskView = TaskView(frame: NSRect(x: 0, y: 0, width: 270, height: 54))
            taskView.task = task
            item.view = taskView
            taskView.show()
            
            statusMenu.insertItem(item, at: taskIndex)
            taskIndex += 1
            taskCount += 1
        }
    }
    
    func menuWillOpen(_ menu: NSMenu) {
        isOpen = true
    }
    
    func menuDidClose(_ menu: NSMenu) {
        isOpen = false
    }
}
