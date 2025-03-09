//
//  Task.swift
//  Pomodoro
//

import Foundation
import AppKit

struct Task {
    var title: String
    var status: TaskStatus
    var textColor: NSColor
    var iconName: String
    var progressPercent: Double
}

enum TaskStatus {
    case notStarted
    case inProgress
    case completed
}
