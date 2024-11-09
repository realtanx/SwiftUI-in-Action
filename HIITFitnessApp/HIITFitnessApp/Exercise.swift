//
//  Exercise.swift
//  HIITFitnessApp
//
//  Created by realtanx on 2024/11/9.
//

import Foundation

struct Exercise {
    let name: String
    let video: String
    
    enum ExerciseEnum: String {
        case squat = "Squat"
        case stepUp = "Step Up"
        case burpee = "Burpee"
        case sunSalute = "Sun Salute"
    }
}

extension Exercise {
    static let exercises = [
        Exercise(name: ExerciseEnum.squat.rawValue, video: "squat"),
        Exercise(name: ExerciseEnum.stepUp.rawValue, video: "step-up"),
        Exercise(name: ExerciseEnum.burpee.rawValue, video: "burpee"),
        Exercise(name: ExerciseEnum.sunSalute.rawValue, video: "sun-salute")
    ]
}
