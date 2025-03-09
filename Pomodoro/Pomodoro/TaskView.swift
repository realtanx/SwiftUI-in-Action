//
//  TaskView.swift
//  Pomodoro
//

import Foundation
import AppKit

class TaskView: NSView {
    
    var task: Task?
    var imageView: NSImageView!
    var titleLabel: NSTextField!
    var infoLabel: NSTextField!
    var progressBar: NSProgressIndicator!
    
    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        
        imageView = NSImageView(frame: NSRect(x: 10, y: 10, width: 20, height: 20))
        imageView.imageScaling = .scaleProportionallyUpOrDown
        
        titleLabel = NSTextField(frame: NSRect(x: 40, y: 26, width: 220, height: 20))
        titleLabel.drawsBackground = false
        
        let infoFrame = NSRect(x: 40, y: 4, width: 220, height: 20)
        infoLabel = NSTextField(frame: infoFrame)
        
        progressBar = NSProgressIndicator(frame: infoFrame)
        progressBar.minValue = 0
        progressBar.maxValue = 100
        progressBar.isIndeterminate = false
        
        addSubview(imageView)
        addSubview(titleLabel)
        addSubview(infoLabel)
        addSubview(progressBar)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func show() {
        guard let task = self.task else { return }
        
        let color = task.textColor
        imageView.image = NSImage(systemSymbolName: task.iconName, accessibilityDescription: task.title)
        imageView.contentTintColor = color
        
        titleLabel.stringValue = task.title
        titleLabel.textColor = color
        
        infoLabel.textColor = color
        
        switch task.status {
        case .notStarted:
            progressBar.isHidden = true
            infoLabel.stringValue = "Not started yet"
        case .inProgress:
            progressBar.doubleValue = task.progressPercent
            infoLabel.isHidden = true
        case .completed:
            progressBar.isHidden = true
            infoLabel.stringValue = "Completed"
        }
    }
    
}
