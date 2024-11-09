//
//  History.swift
//  HIITFitnessApp
//
//  Created by realtanx on 2024/11/9.
//

import Foundation

struct ExerciseDay: Identifiable {
    let id = UUID()
    let date: Date
    var exercises = [Exercise]()
}

struct History {
    var exerciseDays = [ExerciseDay]()
    
    init() {
        mockData()
    }
}

extension History {
    mutating func mockData() {
        exerciseDays = [
            ExerciseDay(date: Date().addingTimeInterval(-86400), exercises: Exercise.exercises),
            ExerciseDay(date: Date().addingTimeInterval(-86400 * 2), exercises: Exercise.exercises)
        ]
    }
}
